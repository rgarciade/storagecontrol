<template>
  <div>
    <div style="-webkit-app-region: drag">
      <v-card>
        <v-card-title class="headline primary lighten-3">
          Empresas
          <v-btn flat icon class="button_add_company" @click="activeNewCompany = true">
            <v-icon>add_comment</v-icon>
          </v-btn>
        </v-card-title>
      </v-card>
      <v-text-field
        v-on:keyup="findCompanys(textFinder)"
        label="Solo"
        placeholder="Buscar"
        solo
        v-model="textFinder"
      ></v-text-field>
    </div>
    <div>
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
					<span>Id empresa: {{company.id}}</span>
					<br>
					<span>telefono: {{company.telephone}}</span>
					<br>
					<span>cif: {{company.cif}}</span>
					<br>

                  <v-card-actions>
                    <v-btn flat color="orange" :href="`mailto:${company.email}`" icon>
                      <v-icon>email</v-icon>
                    </v-btn>
                    <router-link
                      :to="{ name: 'conpanyconfiguration', params: { companyId: company.id}}"
                    >
                      <v-btn flat color="orange">ver</v-btn>
                    </router-link>
                  </v-card-actions>
                </div>
              </v-card-title>
            </v-card>
          </v-hover>
        </v-flex>
      </v-layout>
    </div>
    <Newcompany v-bind:active="activeNewCompany" @disable="activeNewCompany = $event "></Newcompany>
  </div>
</template>

<script>
import { mapState, mapActions } from "vuex";

export default {
  name: "companysfinder",
  created() {
    this.findCompanys("");
  },
  data() {
    return {
      activeNewCompany: false
    };
  },
  computed: mapState(["companys"]),
  methods: Object.assign({}, mapActions(["findCompanys"]), {})
};
</script>

