<template >
  <div style="-webkit-app-region: drag">
    <div>
      <v-card>
        <v-card-title class="headline primary lighten-3">Punto de venta</v-card-title>
          <h1 class="salebox-resume">
            Total {{priceStoreCard}}€ <v-btn :disabled=candFinish color="success" @click="saleDialog = true; closeFinder()">Terminar</v-btn>
          </h1>
      </v-card>
      <cardGrid :isStorecard=true />
    </div>
    <v-dialog v-model="saleDialog" max-width="711px">
      <v-stepper v-model="e1">
        <v-stepper-header>
          <v-stepper-step :complete="e1 > 1" step="1">Tipo de pago</v-stepper-step>
          <v-divider></v-divider>
          <v-stepper-step :complete="(e1 > 2 && (paymentType || creditCard ))? true : false" step="2">Factura</v-stepper-step>
          <v-divider></v-divider>
          <v-stepper-step :complete="(e1 > 3 && paymentType)? true : false" step="3">Busqueda empresa <span v-if="companyData.id > 0 && paymentType"> {{companyData.name}}</span></v-stepper-step>
          <v-divider></v-divider>
          <v-stepper-step :complete="e1 > 4" step="4">Pago</v-stepper-step>
    
        </v-stepper-header>
    
        <v-stepper-items>
          <v-stepper-content step="1">

              <h1>
              Total {{priceStoreCard}}€
            </h1>
            <v-btn
              color="primary"
              @click="e1 = 2; selectPaymentType(0)"
            > <v-icon>euro_symbol</v-icon>
              Efectivo
            </v-btn>
            <v-btn @click="e1 = 2; selectPaymentType(1)" > <v-icon> credit_card</v-icon>tarjeta</v-btn>
          </v-stepper-content>
          <v-stepper-content step="2">
            <v-icon @click="e1 = 1" >keyboard_arrow_left</v-icon>
            <h1>
              ¿Necesita Factura?
            </h1>
            <v-btn
              color="primary"
              @click="e1 = 3; needFacturation(1); textFinder =''"
            > SI
            </v-btn>
            <v-btn
              color="primary"
              @click="e1 = 4; needFacturation(0); textFinder =''"
            > no
            </v-btn>
          </v-stepper-content>
          <v-stepper-content step="3">
            <v-icon @click="e1 = 1" >keyboard_arrow_left</v-icon>
              <v-btn  @click="activeNewCompany = true">
                Nueva Compañia
              </v-btn>
              <h1>
                Buscar compañia
              </h1>
              <h2 v-if="companyData.id > 0">
                Seleccionada: {{companyData.name}}
              </h2>
                <v-text-field
                  label="Solo"
                  placeholder="Buscar"
                  solo
                  v-model="textFinderCompany"
                ></v-text-field>
                <v-layout
                v-for="company in companys"
                :key="company.name"
                row
                justify-space-around
                style="margin-top: 1em"
                >
                <v-flex xs9>
                  <v-hover>
                    <v-card
                    color="blue-grey darken-2"
                    slot-scope="{ hover }"
                    :class="`elevation-${hover ? 24 : 2}`"
                    class="white--text"
                    >
                      <v-card-title primary-title>
                        <div>
                          <div class="headline">{{company.name}}</div>
                          <span>telefono: {{company.telephone}}</span>
                          <span>cif: {{company.cif}}</span>
                          <v-card-actions>
                              <v-btn flat color="orange" @click="companyConfigurationView(company.id); e1 = 4">seleccionar</v-btn>
                          </v-card-actions>
                        </div>
                      </v-card-title>
                    </v-card>
                  </v-hover>
                </v-flex>
              </v-layout>
          </v-stepper-content>
          <v-stepper-content step="4">
            <v-icon @click="e1 = 1" >keyboard_arrow_left</v-icon>
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
              <v-flex xs2 style="padding-top: 3.5%;">
                <span>Total: {{priceStoreCard}} €</span>
              </v-flex>
              <v-flex xs1 style="padding-top: 3.5%;">
                <span v-if="!creditCard" >Entrega:</span>
              </v-flex>
              <v-flex xs2 >
                  <v-text-field
                  type="number"
                  v-if="!creditCard"
                  v-model="paymentAmount"
                  :rules="numberRules"
                  style=""
                  ></v-text-field>
              </v-flex>
              <v-flex xs1 style="padding-top: 3.5%;">
                <span v-if="!creditCard">Cambio:</span>
              </v-flex>
              <v-flex xs2>
                <v-text-field
                  v-if="!creditCard"
                  v-model="moneyBack"
                  :disabled="true"
                ></v-text-field>
              </v-flex>
              <v-flex xs1>
              </v-flex>
              <v-flex xs1>
                <v-checkbox
                color="primary"
                  v-model="print"
                  label="Imprimir"
                ></v-checkbox>
              </v-flex>
            
              <v-flex xs4 style="padding-top: 2.5%;padding-left: 7%;">
              <v-btn
                color="primary"
                :disabled="( creditCard || (priceStoreCard < paymentAmount))?false:true"
                @click="e1 = 1; saleDialog = false; insertPaiment(paymentAmount)"
              >
                Terminar
              </v-btn>
            </v-flex>
            </v-layout>
          </v-stepper-content>
        </v-stepper-items>
      </v-stepper>   
    </v-dialog>
    <Newcompany v-bind:active="activeNewCompany" @disable="activeNewCompany = $event"  @companyName="textFinderCompany = $event" :redirect="false" ></Newcompany>
  </div>
</template>

<script>
import { mapState, mapActions } from "vuex";
const ipcRenderer = require('electron').ipcRenderer;
import { printFacturationFromFacturation } from "../../back/components/facturation";
import { printThermalPrinterSales, printThermalPrinterFacturation } from "../../back/components/printer/thermalprinter";
export default {
  name: "salebox",
  data() {
    return {
      finderOpen: false,
      saleDialog: false,
      print: true,
      e1:0,
      paymentAmount:0,
      moneyBack:0,
      textFinder:"",
      textFinderCompany:"",
      activeNewCompany: false,
      headersResumen: [
        { text: "Descripción", value: "description" },
        { text: "Precio de venta", value: "public_price" },
        { text: "unidades", value: "units" },
        { text: "precio", value: "units" }
      ],
    };
  
  },
  watch: {
    paymentAmount: function (val) {
      
      this.moneyBack = - (this.priceStoreCard - this.paymentAmount)
      
      if(this.moneyBack > 0){
        this.updateIncomingMoney( this.paymentAmount )
      }
    },
    textFinderCompany: function (val) {
      this.findCompanys(val)
    }
  },
  created: function() {
    window.addEventListener("keydown", this.openFinder);
    this.findArticles("");
  },
  computed: Object.assign({}, mapState(["articles","companys","companyData","creditCard","storeCard","priceStoreCard","paymentType"]), {
    candFinish() {
      return this.storeCard.length <= 0 ? true : false;
    }
  }),
  methods: Object.assign({}, mapActions(["companyConfigurationView","findCompanys","changeItemPrice","needFacturation","changeItemDescription","changeItemUnitsNumber","findArticles","addToCard","subtractOneToCard","subtractToCard","inserFacturation","inserSale","createStoreAlert","insertPaiment","selectPaymentType","updateIncomingMoney"]), {
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
    editItem(item) {
      this.editedIndex = this.desserts.indexOf(item);
      this.editedItem = Object.assign({}, item);
      this.dialog = true;
    },
    getValueFromNameAndId(elementName,id){
      return document.getElementById(elementName+id).value
    },
    async insertPaiment( payed ) {
      let newId = 0
      if (this.creditCard == 1 && this.companyData.id <= 0) {
      
        await this.inserFacturation()
        if(this.print){
          printFacturationFromFacturation(20)
        }
      }else if( this.paymentType == 1 && this.companyData.id > 0){

        await this.inserFacturation(this.companyData.id )
        if(this.print){
          printFacturationFromFacturation(20)
        }
      } else {
        
        await this.inserSale()
      }
      //TODO: completar las functiones printFacturationFromFacturation y printFacturationFromSales
      ///// y mover printThermalPrinterFacturation y la otra de donde esta a aqui fuera
      this.paymentAmount = 0;
    },
  })
};
</script>

