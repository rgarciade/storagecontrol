<template>
    <div style="-webkit-app-region: drag">
      <v-card>
        <v-card-title class="headline primary lighten-3">Facturación</v-card-title>
      </v-card>
      <v-text-field
        v-on:keyup="findFacturation(textFinder)"
        label="Solo"
        placeholder="Buscar"
        solo
        v-model="textFinder"
      ></v-text-field>
      <v-data-table
        :headers="headers"
        :items="facturations"
        class="elevation-1"
        :rows-per-page-items="rowsPerPage"
        rows-per-page-text="Listados por pagina"
      >
      <template v-slot:no-data>
        <v-alert :value="true" color="error" icon="warning">
          No se encuentran datos para estos parametros de busqueda
        </v-alert>
      </template>
        <template v-slot:items="props" @click="alert(props.item.facturationId)">
          <td>{{ props.item.facturationId }}</td>
          <td>{{ props.item.date }}</td>
          <td>{{ props.item.price }}</td>
        </template>
      </v-data-table>
      <cardGrid :isPurchaseToModify=true :headers="headersCardGrid" />
    </div>
</template>

<script>
import { mapActions,mapState } from "vuex"
export default {
  name: "billing",
  data: () => ({
    headersCardGrid: [
            { text: "Descripción", value: "description",width:"80%" },
            { text: "Precio de venta", value: "public_price"},
            { text: "unidades", value: "units" },
            { text: "precio", value: "units" },
            { text: "Acciones", value: "name", sortable: false,width:"10%" },
            { text: "", value: "", sortable: false }
    ],
    rowsPerPage: [
      25,
      50,
      100,
      200,
      { text: "$vuetify.dataIterator.rowsPerPageAll", value: -1 }
    ],
    headers: [
      { text: "facturationId", value: "Id de factura" },
      { text: "date", value: "fecha"},
      { text: "precio", value: "price" }
    ]
  }),
  computed: Object.assign({}, mapState(["facturations"]), {}),
  methods: Object.assign({},mapActions([
      "findFacturation",
      "findAllFacturation"
  ]),{}),
  created() {
    this.findAllFacturation()
  }
};
</script>

