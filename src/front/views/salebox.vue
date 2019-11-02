<template >
  <div style="-webkit-app-region: drag" >
    <div>
      <v-card>
        <v-card-title class="headline primary lighten-3">Punto de venta</v-card-title>
      </v-card>
      <v-card
        v-bind:style=" finderOpen ? 'max-width: 400px;' : 'max-width: 65px;' "
        class="align-self-start fincer"
        raised
      >
        <v-toolbar dark>
          <v-btn icon  @click="openFinder">
            <v-icon>search</v-icon>
          </v-btn>
          <v-toolbar-title>busca</v-toolbar-title>
          <div class="flex-grow-1"></div>
        </v-toolbar>
        <v-text-field
          v-if="finderOpen"
          v-on:keyup="findArticles(textFinder)"
          hide-details
          placeholder="Buscar"
          solo
          @click="openFinder()"
          v-model="textFinder"
           autofocus
        ></v-text-field>
        <v-list three-line v-if="finderOpen">
              <template v-for="(item, index) in  this.articles" >
                  <v-list-tile
                    v-if="index < 5"
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
      class="elevator-0 marco_punto_venta"
      no-data=2
      >
      <template v-slot:items="props" class="elevator-1">
        <td>{{ props.item.description }}</td>
        <td>{{ props.item.public_price }} €</td>
        <td>{{ props.item.numberOfArticles }}</td>
        <td>{{ props.item.numberOfArticles * props.item.public_price }} €</td>
      </template>
       <template v-slot:footer>
        {{priceStoreCard}}€
       </template>
      
     </v-data-table>
     
    </div>
  </div>
</template>

<script>
import { mapState, mapActions } from "vuex";
export default {
  name: "salebox",
  data() {
    return {
      finderOpen: false,
      textFinder:"",
          headers: [
            { text: "Descripción", value: "description" },
            { text: "Precio de venta", value: "public_price" },
            { text: "unidades", value: "units" },
            { text: "precio", value: "units" }
            /* ,
            { text: "", value: "name", sortable: false } */
      ]
    };
  },
  created: function() {
    window.addEventListener("keydown", this.openFinder);
    this.findArticles("");
  },
  computed: Object.assign({}, mapState(["articles","storeCard","priceStoreCard"]), {}),
  methods: Object.assign({}, mapActions(["findArticles","addToCard"]), {
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
    },
    closeFinder(){
      this.finderOpen = false
    }
  })
};
</script>

