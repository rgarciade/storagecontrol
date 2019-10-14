<template>
  <div>
    <div style="-webkit-app-region: drag">
      <v-card>
        <v-card-title class="headline primary lighten-3">Articulos</v-card-title>
      </v-card>
      <v-text-field
        v-on:keyup="findArticles(textFinder)"
        label="Solo"
        placeholder="Buscar"
        solo
        v-model="textFinder"
      ></v-text-field>
    </div>
    <v-toolbar flat color="white">
      <v-spacer></v-spacer>
      <v-dialog v-model="dialog" max-width="60%">
        <template v-slot:activator="{ on }">
          <v-btn
            color="primary"
            @click="statusNewItem(true)"
            dark
            class="mb-2"
            v-on="on"
          >Nuevo Articulo</v-btn>
        </template>
        <v-card>
          <v-card-title>
            <span class="headline">{{ formTitle }}</span>
          </v-card-title>
          <v-card-text>
            <v-container grid-list-md>
              <v-layout wrap>
                <v-flex xs12 sm6 md4>
                  <v-text-field
                    v-model="editedItem.productid"
                    label="Id del prroducto"
                    :rules="idMaxLength"
                    validate-on-blur
                  ></v-text-field>
                </v-flex>
                <v-flex xs12 sm6 md4>
                  <v-text-field v-model="editedItem.description" label="Descripción"></v-text-field>
                </v-flex>
                <v-flex xs12 sm6 md4>
                  <v-text-field
                    v-model="editedItem.price_without_vat"
                    disabled
                    label="precio de compra sin iva"
                  ></v-text-field>
                </v-flex>
                <v-flex xs12 sm6 md4>
                  <v-text-field v-model="editedItem.purchase_price" label="precio de compra"></v-text-field>
                </v-flex>
                <v-flex xs12 sm6 md4>
                  <v-text-field v-model="editedItem.public_price" label="precio de venta"></v-text-field>
                </v-flex>
                <v-flex xs12 sm6 md4>
                  <v-text-field v-model="editedItem.units" label="unidades"></v-text-field>
                </v-flex>
              </v-layout>
            </v-container>
          </v-card-text>
          <v-card-actions>
            <v-spacer></v-spacer>
            <v-btn color="blue darken-1" flat @click="close">Cancelar</v-btn>
            <v-btn color="blue darken-1" flat @click="save">Guardar</v-btn>
          </v-card-actions>
        </v-card>
      </v-dialog>
    </v-toolbar>

    <v-data-table
      :headers="headers"
      :items="articles"
      class="elevation-1"
      :rows-per-page-items="rowsPerPage"
      rows-per-page-text="Listados por pagina"
    >
      <template v-slot:items="props">
        <td>{{ props.item.productid }}</td>
        <td>{{ props.item.description }}</td>
        <td>{{ props.item.price_without_vat }}</td>
        <td>{{ props.item.purchase_price }}</td>
        <td>{{ props.item.public_price }}</td>
        <td>21</td>
        <td>{{ props.item.units }}</td>
        <td class="justify-center layout px-0 actions_icons">
          <v-icon small class="mr-2" @click="editItem(props.item)">edit</v-icon>
          <v-icon small @click="deleteItem(props.item)">delete</v-icon>
        </td>
      </template>
    </v-data-table>
  </div>
</template>

<script>
import { mapState, mapActions } from "vuex";
import { basePrice, checkInputs } from "../../common/commonfunctions";

export default {
  name: "articles",
  data: () => ({
    newItem: false,
    vat: 21,
    idMaxLength: checkInputs.idMaxLength,
    rowsPerPage: [
      25,
      50,
      100,
      200,
      { text: "$vuetify.dataIterator.rowsPerPageAll", value: -1 }
    ],
    dialog: false,
    headers: [
      { text: "Id Articulo", value: "productid" },
      { text: "Descripción", value: "description" },
      { text: "Precio sin iva", value: "price_without_vat" },
      { text: "Precio de compra", value: "purchase_price" },
      { text: "Precio de venta", value: "public_price" },
      { text: "precio medio", value: "pmedio" },
      { text: "unidades", value: "units" },
      { text: "Acciones", value: "name", sortable: false }
    ],
    desserts: [],
    textFinder: "",
    editedIndex: -1,
    editedItem: {
      productid: "",
      description: null,
      units: null,
      purchase_price: null,
      price_without_vat: 0,
      public_price: null
    },
    defaultItem: {
      productid: "",
      description: null,
      units: null,
      purchase_price: null,
      price_without_vat: 0,
      public_price: null
    }
  }),
  computed: Object.assign({}, mapState(["articles"]), {
    formTitle() {
      return this.editedIndex === -1 ? "Nuevo artículo" : "Editar Articulo";
    }
  }),

  watch: {
    dialog(val) {
      val || this.close();
    },
    "editedItem.public_price": {
      handler: function(after, before) {
        this.editedItem.price_without_vat = basePrice(after, this.vat);
      },
      deep: true
    }
  },
  created() {
    this.findArticles();
  },
  methods: Object.assign(
    {},
    mapActions([
      "addNewArticle",
      "findArticles",
      "updateArticle",
      "deleteArticleFromId",
      "createStoreAlert"
    ]),
    {
      statusNewItem(status = true) {
        this.newItem = status;
      },
      editItem(item) {
        this.statusNewItem(false);
        this.editedIndex = this.articles.indexOf(item);
        this.editedItem = Object.assign({}, item);
        this.dialog = true;
      },
      deleteItem(item) {
        this.statusNewItem(false);
        const index = this.articles.indexOf(item);
        console.log(item);
        this.deleteArticleFromId(item);
        //confirm('Are you sure you want to delete this item?') && this.articles.splice(index, 1)
      },
      close() {
        this.dialog = false;
        setTimeout(() => {
          this.editedItem = Object.assign({}, this.defaultItem);
          this.editedIndex = -1;
        }, 300);
      },
      async save() {
        if (this.editedItem.productid.length > 13) {
          this.createStoreAlert("error en el forrmulario");
          return "";
        }
        if (this.newItem) {
          let article = {
            productid: parseInt(this.editedItem.productid),
            description: this.editedItem.description,
            units: parseInt(this.editedItem.units),
            purchase_price: parseInt(this.editedItem.purchase_price),
            public_price: parseInt(this.editedItem.public_price)
          };
          await this.addNewArticle(article);
          this.findArticles("");
        } else {
          let media =
            (this.articles[this.editedIndex].purchase_price +
              this.editedItem.purchase_price) /
            2;
          let article = {
            idarticles: parseInt(this.articles[this.editedIndex].idarticles),
            description: this.editedItem.description,
            productid: parseInt(this.editedItem.productid),
            public_price: parseInt(this.editedItem.public_price),
            purchase_price: parseInt(this.editedItem.purchase_price),
            units: parseInt(this.editedItem.units),
            media: parseInt(media)
          };
          await this.updateArticle(article);
        }
        this.close();
      }
    }
  )
};
</script>

