<template>
    <div style="-webkit-app-region: drag">
      <v-card>
        <v-card-title class="headline primary lighten-3">Facturación</v-card-title>
      </v-card>
      <v-data-table
        :headers="headers"
        :items="facturation"
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
    </div>
</template>

<script>
export default {
  name: "billing",
  data: () => ({
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
  })
};
</script>

