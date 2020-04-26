<template>
    <div style="-webkit-app-region: drag">
        <v-card>
          <v-card-title class="headline primary lighten-3">Facturación</v-card-title>
            <h1 class="salebox-resume" v-if="FacturationPreviewVisibility">
              Total {{pricePurchaseToModify}}€  &nbsp;&nbsp; 
            </h1>
        </v-card>
      <div v-if="FacturationListVisibility">
        <v-card-text>
          <v-layout row>
            <v-flex xs1>
              <v-btn icon @click="fidFacturation(numberFinder)">
                <v-icon>search</v-icon>
              </v-btn>
            </v-flex>
            <v-flex xs2>
              <v-text-field
                :mask="mask"
                v-model="numberFinder"
              ></v-text-field>
            </v-flex>
            <v-icon>search</v-icon>
            <v-flex xs2>
              <v-flex xs12 lg6>
                <v-menu
                  ref="menu1"
                  v-model="menu1"
                  :close-on-content-click="false"
                  :nudge-right="40"
                  lazy
                  transition="scale-transition"
                  offset-y
                  full-width
                  max-width="290px"
                  min-width="290px"
                >
                  <template v-slot:activator="{ on }">
                    <v-text-field
                      v-model="dateFormatted"
                      label="Date"
                      hint="MM/DD/YYYY format"
                      persistent-hint
                      prepend-icon="event"
                      v-on="on"
                    ></v-text-field>
                  </template>
                  <v-date-picker v-model="date" no-title @input="menu1 = false"></v-date-picker>
                </v-menu>
              <p>Date in ISO format: <strong>{{ date }}</strong></p>
              </v-flex>
            </v-flex>
            <v-icon>search</v-icon>
            <v-flex xs2>
              <v-text-field
                v-model="numberFinder"
              ></v-text-field>
            </v-flex>
            <v-flex xs1>
            </v-flex>
            <v-flex xs4>
              <v-select
                  :items="finders"
                  label="selecciona"
                  v-model="finder"
                  solo
                ></v-select>
            </v-flex>
          </v-layout>
        </v-card-text>
      
        <v-data-table
          :headers="headers"
          :items="facturations"
          disable-initial-sort="true"
          class="elevation-1"
          :rows-per-page-items="rowsPerPage"
          rows-per-page-text="Listados por pagina"
        >
        <template v-slot:no-data>
          <v-alert :value="true" color="error" icon="warning">
            No se encuentran datos
          </v-alert>
        </template>
          <template v-slot:items="props" >
            <td><v-btn color="info" @click="selectBill(props.item.facturationId)">Modificar</v-btn>
            <v-btn color="info" @click="printFacturation(props.item.facturationId)">Imprimir</v-btn></td>
            <td>{{ props.item.facturationId }}</td>
            <td>{{ props.item.date }}</td>
            <td>{{ props.item.price }}</td>
          </template>
        </v-data-table>
      </div>
      <v-list v-if="FacturationPreviewVisibility">
        <v-btn outline color="indigo" fixed class="facturationButtonUp" @click="restartBillFinded()"><v-icon>import_export</v-icon></v-btn>
        <cardGrid :isPurchaseToModify=true />
        <v-btn v-if="UpdateButton" left color="red" @click="updateBill();restartBillFinded()"><v-icon>save</v-icon></v-btn>
      </v-list>
    </div>
</template>

<script>
import { mapActions,mapState } from "vuex"
export default {
  name: "billing",
  data: () => ({
    mask: "#############",
    finder: 'id Factura',
    finders: [
      'id Empresa',
      'id Factura',
    ],
    rowsPerPage: [
      25,
      50,
      { text: "$vuetify.dataIterator.rowsPerPageAll", value: -1 }
    ],
    headers: [
      { text: "", value: "",sortable: false,width:"20%" },
      { text: "facturationId", value: "Id de factura" },
      { text: "date", value: "fecha"},
      { text: "precio", value: "price" }
    ],
    'initialDate':null,
    menu1: false
  }),
  computed: Object.assign({}, mapState([
    "facturations",
    "FacturationListVisibility",
    "FacturationPreviewVisibility",
    "UpdateButton",
    "pricePurchaseToModify"
  ]), {}),
  methods: Object.assign({},mapActions([
      "fidFacturationfromCompanyId",
      "fidFacturationfromFacturationId",
      "findAllFacturation",
      "selectBill",
      "restartBillFinded",
      "updateBill",
      "printFacturation"
  ]),{
    fidFacturation(){
      if(this.finder == 'id Factura'){
        this.fidFacturationfromFacturationId(this.numberFinder)
      }else{
        this.fidFacturationfromCompanyId(this.numberFinder)
      }
    },
    
  }),
  created() {
    this.restartBillFinded()
    this.findAllFacturation()
  }
};
</script>

