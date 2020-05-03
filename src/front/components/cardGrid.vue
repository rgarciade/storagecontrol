
<template>
    <div>    
        <div>
            <v-card
                v-if="!readOnly"
                v-bind:style=" finderOpen ? 'max-width: 400px;' : 'max-width: 65px;' "
                class="align-self-start fincer busqueda-agregar-articulo"
                raised
                id="articlesList"
            >
                <v-toolbar dark>
                    <v-btn icon @click="openFinder">
                        <v-icon>search</v-icon>
                    </v-btn>
                    <v-toolbar-title>busca</v-toolbar-title>
                    <div class="flex-grow-1"></div>
                </v-toolbar>
                <v-text-field
                    autofocus
                    v-if="finderOpen"
                    v-on:keyup="findArticles(textFinder)"
                    hide-details
                    placeholder="Buscar"
                    solo
                    @click="openFinder()"
                    v-model="textFinder"
                ></v-text-field>
                <v-list three-line v-if="finderOpen" class="scroll-find-articles">
                    <template v-for="(item, index) in  this.articles" >
                        <v-list-tile
                            :key="item.index"
                            avatar
                            @click="addElement(item.idarticles)"
                            class='article-finder-box'
                        >
                            <v-list-tile-avatar >
                                <v-icon>add_shopping_cart</v-icon>
                            </v-list-tile-avatar>
                            <v-list-tile-content >
                                <v-list-tile-title class="article-finder" v-html="item.description"></v-list-tile-title>
                                <v-list-tile-sub-title class="article-finder" v-html="'codigo:'+item.productid"></v-list-tile-sub-title>
                                <v-list-tile-sub-title class="article-finder" v-html="item.public_price+'€'"></v-list-tile-sub-title>
                            </v-list-tile-content>
                        </v-list-tile>
                        <v-divider
                            :key="index"
                        ></v-divider>
                    </template>
                    </v-list>
            </v-card>
        </div>
        <div class="all_space" v-on:click="closeFinder()">
            <v-btn v-if="!readOnly"
                color="primary"
                @click="addElement()"
                class = "add-new-article-line"
                > <v-icon>add</v-icon>
            </v-btn>
            <v-data-table
                :headers="!readOnly ? headers : headersReadOnly"
                :items="itemsList"
                hide-actions
                class="elevator-0 marco_punto_venta "
                no-data="2"
                no-data-text="No hay artículos seleccionados"
                expand
                :disable-initial-sort=true
            >
                <template v-slot:items="props" class="elevator-1 marco_interior_punto_de_venta">
                    <dir>
                        <td v-if="props.item.idarticles > 0 " :readonly="readOnly" >
                        {{ props.item.description }}
                        </td>
                        <td v-if="props.item.idarticles < 0 " style="width:3000em">
                            <textarea  :auto-grow="true" :disabled="readOnly" style="width: 100%;" type="text" :id="'articleId-description-' + props.item.idarticles" :value=props.item.description 
                            @change="changeItemDescriptionElement({'idarticles':props.item.idarticles, 'description':getValueFromNameAndId('articleId-description-',props.item.idarticles)})"/>
                        </td>
                    </dir>
                     <td>
                        <input :readonly="readOnly" class="imput-number" type="number" :id="'articleId-UnitsNumber-' + props.item.idarticles" :value=props.item.numberOfArticles 
                        @change="changeItemUnitsNumberElement({'idarticles':props.item.idarticles, 'units':getValueFromNameAndId('articleId-UnitsNumber-',props.item.idarticles)})">
                    </td>
                    <td>
                        <input :readonly="readOnly"  class="imput-number" type="number" :id="'articleId-price-' + props.item.idarticles" :value=props.item.public_price 
                            @change="changeItemPriceElemeny({'idarticles':props.item.idarticles, 'price':getValueFromNameAndId('articleId-price-',props.item.idarticles)})">
                    </td>
                   
                    <td>{{ props.item.numberOfArticles * props.item.public_price }}</td>
                    <td v-if="!readOnly">
                        <v-icon  class="mr-2" @click="addElement( props.item.idarticles)">add_box</v-icon>
                        <v-icon  @click="subtractOneToCardElement( props.item.idarticles)">remove_circle</v-icon>
                    </td>
                    <td v-if="!readOnly">
                        <v-icon @click="subtractToCardElement( props.item.idarticles)">delete</v-icon>
                    </td>
                </template>
            </v-data-table>
        </div>
    </div>
</template>
<script>
    import { mapActions,mapState } from "vuex"
    export default {
        name: 'cardGrid',
        data:() => ({
            itemsList: [],
            finderOpen: false,
            headers: [
                { text: "Descripción", value: "description",width:"80%", sortable: false},
                { text: "Unidades", value: "units", sortable: false},
                { text: "Precio de venta", value: "public_price", sortable: false},
                { text: "Total", value: "units", sortable: false},
                { text: "Acciones", value: "name", width:"10%", sortable: false},
                { text: "", value: "", sortable: false }
            ],
            headersReadOnly: [
                { text: "Descripción", value: "description",width:"80%", sortable: false},
                { text: "Unidades", value: "units", sortable: false},
                { text: "Precio de venta", value: "public_price", sortable: false},
                { text: "Total", value: "units", sortable: false},
                { text: "", value: "", sortable: false }
            ]
        }),
        created() {
            if(this.isPurchaseToModify){
                this.itemsList = this.purchaseToModify
                this.addElement = this.addToPurchaseModification
                this.subtractToCardElement = this.subtractToPurchaseModification
                this.subtractOneToCardElement = this.subtractOneToPurchaseModification
                this.changeItemPriceElemeny = this.changePurchaseModificationItemPrice
                this.changeItemDescriptionElement = this.changePurchaseModificationItemDescription
                this.changeItemUnitsNumberElement = this.changePurchaseModificationItemUnitsNumber
                
            }
            if(this.isStorecard){
                this.itemsList = this.storeCard
                this.addElement = this.addToCard
                this.subtractToCardElement = this.subtractToCard
                this.subtractOneToCardElement = this.subtractOneToCard
                this.changeItemPriceElemeny = this.changeItemPrice
                this.changeItemDescriptionElement = this.changeItemDescription
                this.changeItemUnitsNumberElement = this.changeItemUnitsNumber
            }
            window.addEventListener("keydown", this.openFinder);
            this.findArticles("");
        },
        destroyed: function(){
            if(this.isPurchaseToModify){
                this.clearnPriceStoreCard() 
            }
        },
        props: {
            isPurchaseToModify: Boolean,
            isStorecard: Boolean,
            readOnly: Boolean
        },
         computed: Object.assign({}, mapState(["articles","companyData","storeCard","purchaseToModify","priceStoreCard"]), {
            candFinish() {
                return this.storeCard.length <= 0 ? true : false;
            }
        }),
        watch: {
          storeCard : function (id) {
            if(this.isStorecard){
              this.itemsList = this.storeCard
            }
          }
        },
        methods: Object.assign({},mapActions([
            "changeItemPrice",
            "changePurchaseModificationItemPrice",
            "changeItemDescription",
            "changePurchaseModificationItemDescription",
            "changeItemUnitsNumber",
            "changePurchaseModificationItemUnitsNumber",
            "addToCard",
            "addToPurchaseModification",
            "findArticles",
            "clearnPriceStoreCard",
            "itemsCardList",
            "subtractOneToCard",
            "subtractOneToPurchaseModification",
            "subtractToCard",
            "subtractToPurchaseModification"
            ]),{
            getValueFromNameAndId(elementName,id){
                return document.getElementById(elementName+id).value
            },
            openFinder(e) {
                if(!e || e.target.nodeName == 'TEXTAREA'){
                    return 
                }

                if (e && e.code == "Enter" && e.type == "keydown" && !this.finderOpen) {
                this.finderOpen = !this.finderOpen;
                } else if (e && e.type && e.type == "click") {
                    this.finderOpen = !this.finderOpen;
                } else if (!e.type && e == "open") {
                    this.finderOpen = true;
                }
                if (e && e.code == "Escape" && e.type == "keydown" && this.finderOpen) {
                    this.closeFinder();
                }
            },
            closeFinder() {
                this.finderOpen = false;
            },
            addElement(){},
            subtractToCardElement(){},
            subtractOneToCardElement(){}
        })
    }
</script>