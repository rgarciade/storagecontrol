<template>
    <div style="-webkit-app-region: drag">
        <v-card>
          <v-card-title class="headline primary lighten-3">Tickets</v-card-title>
            <h1 class="salebox-resume" v-if="TicketPreviewVisibility">
              Total {{pricePurchaseToModify}}€  &nbsp;&nbsp; 
            </h1>
        </v-card>
      <div v-if="ticketsListVisibility">
        <v-card-text>
          <v-layout row>
            <v-flex xs1>
              <v-btn icon @click="fidTicket(numberFinder, initialDate ,finalDate)">
                <v-icon>search</v-icon>
              </v-btn>
            </v-flex>
            <v-flex xs2>
              <v-text-field
                :mask="mask"
                v-model="numberFinder"
              ></v-text-field>
            </v-flex>
            <v-flex xs2 >
              <v-menu
                 v-if="seeDates"
                ref="fecha1"
                v-model="fecha1"
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
                    v-model="initialDateFormated"
                    label="Fecha Inicial"
                    hint="DD/MM/YYYY"
                    persistent-hint
                    prepend-icon="event"
                    readonly
                    v-on="on"
                  ></v-text-field>
                </template>
                <v-date-picker v-model="initialDate" no-title @input="fecha1 = false" locale="es-ES"></v-date-picker>
              </v-menu>
            </v-flex>
            <v-flex xs2>
              <v-menu 
                 v-if="seeDates"
                ref="fecha2"
                v-model="fecha2"
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
                    v-model="finalDateFormated"
                    label="Fecha Final"
                    hint="DD/MM/YYYY"
                    persistent-hint
                    prepend-icon="event"
                    readonly
                    v-on="on"
                  ></v-text-field>
                </template>
                <v-date-picker v-model="finalDate" no-title @input="fecha2 = false" locale="es-ES"></v-date-picker>
              </v-menu>
            </v-flex>           
          </v-layout>
        </v-card-text>
      
        <v-data-table
          :headers="headers"
          :items="tickets"
          :disable-initial-sort=true
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
            <td><v-btn color="info" @click="selectTicket(props.item.ticketId)">Modificar</v-btn>
            <v-btn color="info" @click="">Imprimir</v-btn>
            <td>{{ props.item.ticketId }}</td>
            <td>{{ props.item.date }}</td>
            <td>{{ props.item.price }}</td>
          </template>
        </v-data-table>
      </div>
      <v-list v-if="TicketPreviewVisibility">
        <v-btn outline color="indigo" fixed class="facturationButtonUp" @click="restartTicketFinded()"><v-icon>import_export</v-icon></v-btn>
        <cardGrid :isPurchaseToModify=true :readOnly=true />
      </v-list>
    </div>
</template>

<script>
import { mapActions,mapState } from "vuex"
export default {
  name: "tickets",
  data: () => ({
    mask: "#############",
    rowsPerPage: [
      25,
      50,
      { text: "$vuetify.dataIterator.rowsPerPageAll", value: -1 }
    ],
    headers: [
      { text: "", value: "",sortable: false,width:"20%" },
      { text: "Tocket id", value: "Id de Ticket" },
      { text: "date", value: "fecha"},
      { text: "precio", value: "price" }
    ],
    seeDates: true,
    fecha1: false,
    fecha2: false,
    initialDate: new Date().toISOString().substr(0, 10),
    finalDate: new Date().toISOString().substr(0, 10)
  }),
  computed: Object.assign({}, mapState([
    "tickets",
    "ticketsListVisibility",
    "TicketPreviewVisibility",
    "pricePurchaseToModify",
    
  ]), {
    initialDateFormated () {
      return this.formatDate(this.initialDate)
    },
    finalDateFormated () {
      return this.formatDate(this.finalDate)
    }
  }),
  watch:{
    finder: function(val){
      this.seeDates = (val == "id Empresa")
    }
  },
  methods: Object.assign({},mapActions([
      "findTicketfromFacturationIdAndDates",
      "findAllTickets",
      "selectTicket",
      "restartTicketFinded",
      "printFacturation"
  ]),{
    fidTicket(numberFinder, initialDate ,finalDate){
      this.findTicketfromFacturationIdAndDates({numberFinder, initialDate ,finalDate})
    },
    formatDate (date) {
      if (!date) return null
      const [year, month, day] = date.split('-')
      return `${day}/${month}/${year}`
    },
    parseDate (date) {
      if (!date) return null
      const [month, day, year] = date.split('/')
      return `${year}-${month.padStart(2, '0')}-${day.padStart(2, '0')}`
    }
  }),
  created() {
    //this.restartBillFinded()
    this.findAllTickets()
  }
};
</script>

