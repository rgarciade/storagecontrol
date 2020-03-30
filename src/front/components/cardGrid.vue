
<template>
<!-- añadi v-on:click="closeFinder() por props en el template
-->
    <div>
        <v-data-table
            :headers="headers"
            :items="itemsList"
            hide-actions
            class="elevator-0 marco_punto_venta "
            no-data="2"
            no-data-text="No hay artículos seleccionados"
            expand
        >
            <template v-slot:items="props" class="elevator-1">
                <dir>
                    <td v-if="props.item.idarticles > 0">
                    {{ props.item.description }}
                    </td>
                    <td v-if="props.item.idarticles < 0" style="width:3000em">
                    <textarea style="width: 100%;" type="text" :id="'articleId-description-' + props.item.idarticles" :value=props.item.description 
                        @change="changeItemDescription({'idarticles':props.item.idarticles, 'description':getValueFromNameAndId('articleId-description-',props.item.idarticles)})"/>
                    </td>
                </dir>
                <td>
                    <input class="imput-number" type="number" :id="'articleId-price-' + props.item.idarticles" :value=props.item.public_price 
                        @change="changeItemPrice({'idarticles':props.item.idarticles, 'price':getValueFromNameAndId('articleId-price-',props.item.idarticles)})">
                </td>
                <td>
                    <input class="imput-number" type="number" :id="'articleId-UnitsNumber-' + props.item.idarticles" :value=props.item.numberOfArticles 
                    @change="changeItemUnitsNumber({'idarticles':props.item.idarticles, 'units':getValueFromNameAndId('articleId-UnitsNumber-',props.item.idarticles)})">
                </td>
                <td>{{ props.item.numberOfArticles * props.item.public_price }}</td>
                <td>
                    <v-icon  class="mr-2" @click="addElement( props.item.idarticles)">add_box</v-icon>
                    <v-icon  @click="subtractOneToCardElement( props.item.idarticles)">remove_circle</v-icon>
                </td>
                <td>
                    <v-icon @click="subtractToCardElement( props.item.idarticles)">delete</v-icon>
                </td>
            </template>
        </v-data-table>
    </div>
</template>
<script>
    import { mapActions,mapState } from "vuex"
    export default {
        name: 'cardGrid',
        data:() => ({
            itemsList: [],
        }),
        created() {
            if(this.isPurchaseToModify){
                this.itemsList = purchaseToModify
                this.addElement = () =>{console.log('add')}
                this.substracElement = () =>{console.log('substrac')}
            }
            if(this.isStorecard){
                this.itemsList = this.storeCard
                this.addElement = this.addToCard
                this.subtractToCardElement = this.subtractToCard
                this.subtractOneToCardElement = this.subtractOneToCard
            }
        },
        destroyed: function(){
            if(this.isPurchaseToModify && !this.isStorecard){
                this.purchaseToModify = [] 
            }
        },
        props: {
            headers:Array,
            isPurchaseToModify: Boolean,
            isStorecard: Boolean
        },
         computed: Object.assign({}, mapState(["articles","companyData","storeCard","purchaseToModify","priceStoreCard"]), {
            candFinish() {
                return this.storeCard.length <= 0 ? true : false;
            }
        }),
        methods: Object.assign({},mapActions([
            "changeItemPrice",
            "changeItemDescription",
            "changeItemUnitsNumber",
            "addToCard",
            "itemsCardList",
            "subtractOneToCard",
            "subtractToCard"]),{
            getValueFromNameAndId(elementName,id){
                return document.getElementById(elementName+id).value
            },
            addElement(){},
            subtractToCardElement(){},
            subtractOneToCardElement(){}
            
        })
    }
</script>