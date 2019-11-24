<template >
  <div style="-webkit-app-region: drag">
    <div>
      <v-card>
        <v-card-title class="headline primary lighten-3">Punto de venta</v-card-title>
          <h1 class="salebox-resume">
            Total {{priceStoreCard}}€ <v-btn color="success" @click="saleDialog = true">Terminar</v-btn>
          </h1>
      </v-card>
      <v-card
        v-bind:style=" finderOpen ? 'max-width: 400px;' : 'max-width: 65px;' "
        class="align-self-start fincer"
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
        <v-list three-line v-if="finderOpen">
              <template v-for="(item, index) in  this.articles" >
                  <v-list-tile
                    v-if="index < 5 && item.productid"
                    :key="item.index"
                    avatar
                    @click="addToCard(item.idarticles)"
                    class='article-finder-box'
                  >
                    <v-list-tile-avatar >
                      <v-icon>add_shopping_cart</v-icon>
                    </v-list-tile-avatar>
                    <v-list-tile-content  >
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
      <v-data-table
        :headers="headers"
        :items="storeCard"
        hide-actions
        class="elevator-0 marco_punto_venta "
        no-data="2"
      >
      <template v-slot:items="props" class="elevator-1">
        <td>{{ props.item.description }}</td>
        <td>{{ props.item.public_price }} €</td>
        <td>{{ props.item.numberOfArticles }}</td>
        <td>{{ props.item.numberOfArticles * props.item.public_price }} €</td>
        <td >
          <v-icon  class="mr-2" @click="addToCard(props.item.idarticles)">add_box</v-icon>
          <v-icon  @click="subtractOneToCard(props.item.idarticles)">remove_circle</v-icon>
        </td>
        <td><v-icon @click="subtractToCard(props.item.idarticles)">delete</v-icon></td>
      </template>
     </v-data-table>
    </div>

      <v-dialog v-model="saleDialog" max-width="611px">
        <v-stepper v-model="e1">
          <v-stepper-header>
            <v-stepper-step :complete="e1 > 1" step="1">tipo de pago</v-stepper-step>
      
            <v-divider></v-divider>
      
            <v-stepper-step :complete="e1 > 2" step="2">Pago</v-stepper-step>
      
          </v-stepper-header>
      
          <v-stepper-items>
            <v-stepper-content step="1">

               <h1>
                Total {{priceStoreCard}}€
              </h1>
              <v-btn
                color="primary"
                @click="e1 = 2; selectPaymentType(1)"
              > <v-icon>euro_symbol</v-icon>
                Efectivo
              </v-btn>
      
              <v-btn @click="e1 = 2; selectPaymentType(1)" > <v-icon> credit_card</v-icon>tarjeta</v-btn>
            </v-stepper-content>
      
            <v-stepper-content step="2">
              <v-card
                color=""
                style="max-height: 20em;
                overflow: auto;"
                
              >
              <v-data-table
                :headers="headersResumen"
                :items="storeCard"
                hide-actions
                class="elevator-0 marco_punto_venta"
                style="padding-bottom: 10%; padding-top:1%"
                no-data="2"
              >
                <template v-slot:items="props" class="elevator-1">
                  <td>{{ props.item.description }}</td>
                  <td>{{ props.item.public_price }} €</td>
                  <td>{{ props.item.numberOfArticles }}</td>
                  <td>{{ props.item.numberOfArticles * props.item.public_price }} €</td>
                </template>
              </v-data-table>
              
              </v-card>
              <v-layout>
                <v-flex xs3 md1
                style="padding-top: 4%; position: fixed;">
                  <span>Paga</span>
                </v-flex>
                <v-flex xs3 md1>
                    <v-text-field
                    :value="salebox.paymentAmount"
                    :rules="numberRules"
                    style="position: fixed; padding-top: 6%;"
                    ></v-text-field>
                  
                </v-flex>
                  <v-flex xs3 md1
                  style="padding-top: 4%;">
                    <span style="padding-top: 4%;">vuelta</span>
                  </v-flex>
                  <v-flex xs3 md1>
                    <v-text-field
                      :value="salebox.moneyBack"
                      disabled=true
                    ></v-text-field>
                  </v-flex>
              </v-layout>
              <v-btn
                color="primary"
                @click="e1 = 3"
              >
                Continue
              </v-btn>
      
              <v-btn  @click="e1 = 1" flat>atrasss</v-btn>
            </v-stepper-content>
          </v-stepper-items>
        </v-stepper>   
      </v-dialog>
      <v-btn @click="inserFacturation()"> <v-icon> credit_card</v-icon>facturacion</v-btn>
      <v-btn @click="inserSale()"> <v-icon> credit_card</v-icon>sales</v-btn>
  </div>
</template>

<script>
import { mapState, mapActions } from "vuex";
export default {
  name: "salebox",
  data() {
    return {
      finderOpen: false,
      saleDialog: false,
      e1:0,
      textFinder:"",
      headers: [
            { text: "Descripción", value: "description" },
            { text: "Precio de venta", value: "public_price" },
            { text: "unidades", value: "units" },
            { text: "precio", value: "units" },
            { text: "Acciones", value: "name", sortable: false },
            { text: "", value: "", sortable: false }
      ],
      headersResumen: [
        { text: "Descripción", value: "description" },
        { text: "Precio de venta", value: "public_price" },
        { text: "unidades", value: "units" },
        { text: "precio", value: "units" }
      ],
    };
  },
  created: function() {
    window.addEventListener("keydown", this.openFinder);
    this.findArticles("");
  },
  computed: Object.assign({}, mapState(["articles","storeCard","priceStoreCard","salebox"]), {}),
  methods: Object.assign({}, mapActions(["findArticles","addToCard","subtractOneToCard","subtractToCard","inserFacturation","inserSale","selectPaymentType"]), {
    openFinder(e) {
      if(!e){
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
    editItem(item) {
      this.editedIndex = this.desserts.indexOf(item);
      this.editedItem = Object.assign({}, item);
      this.dialog = true;
    }
  })
};
</script>

