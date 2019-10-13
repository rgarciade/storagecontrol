<template>
  <div style="-webkit-app-region: drag">
    <v-card>
      <v-card-title class="headline primary lighten-3">Punto de venta</v-card-title>
    </v-card>
    <v-card
      v-bind:style=" finderOpen ? 'max-width: 400px;' : 'max-width: 65px;' "
      class="align-self-start"
    >
      <v-toolbar dark>
        <v-btn icon>
          <v-icon @click="openFinder">search</v-icon>
        </v-btn>
        <v-toolbar-title>busca</v-toolbar-title>
        <div class="flex-grow-1"></div>
      </v-toolbar>
      <v-text-field
        v-on:keyup="findCompanys(textFinder)"
        label="Solo"
        placeholder="Buscar"
        solo
        @click="openFinder('open')"
        v-model="textFinder"
      ></v-text-field>
      <v-list three-line>
        <template v-for="(item, index) in this.articles">
          <v-subheader v-if="item.description" :key="item.description" v-text="item.description"></v-subheader>
          <v-list-item v-else :key="item.idarticles" @click>
            <v-list-item-avatar>
              <v-icon>pages</v-icon>
            </v-list-item-avatar>

            <v-list-item-content>
              <v-list-item-title v-html="item.idarticles"></v-list-item-title>
              <v-list-item-subtitle v-html="item.description"></v-list-item-subtitle>
            </v-list-item-content>
          </v-list-item>
        </template>
      </v-list>
    </v-card>
  </div>
</template>

<script>
import { mapState, mapActions } from "vuex";
export default {
  name: "salebox",
  data() {
    return {
      finderOpen: false
    };
  },
  created: function() {
    window.addEventListener("keydown", this.openFinder);
    this.findArticles("");
  },
  computed: Object.assign({}, mapState(["articles"]), {}),
  methods: Object.assign({}, mapActions(["findArticles"]), {
    openFinder(e) {
      if (e && e.code == "Enter" && e.type == "keydown" && !this.finderOpen) {
        this.finderOpen = !this.finderOpen;
      } else if (e.type == "click") {
        this.finderOpen = !this.finderOpen;
      } else if (!e.type && e == "open") {
        this.finderOpen = true;
      }
    }
  })
};
</script>

