<template>
  <div>
    <div>
    <v-card>
      <v-card-title class="headline primary lighten-3">
          Empresas
      </v-card-title>
    </v-card>
    <v-text-field
      v-on:keyup ="findCompanys(textFinder)"
      label="Solo"
      placeholder="Placeholder"
      solo
      v-model="textFinder"
    ></v-text-field>
</div>

  <v-layout             
    v-for="company in companys"
    :key="company.name" row justify-space-around
    style="margin-top: 1em"
    >
    <v-flex xs9>
      <v-hover>
        <v-card color="blue-grey darken-2" 
              slot-scope="{ hover }"
              :class="`elevation-${hover ? 24 : 2}`"
              class="white--text ">
            <v-card-title primary-title>
              <div>
                <div class="headline">{{company.name}}</div>
                <span>telefono: {{company.telephon}}</span>
                <v-card-actions>
                  <v-btn flat color="orange" :href="`mailto:${company.email}`" icon><v-icon>email</v-icon></v-btn>
                  <v-btn flat color="orange" ><router-link :to="{ name: 'conpanyconfiguration', params: { comnpanyName: company.name}}">configurar</router-link></v-btn>
                </v-card-actions>
              </div>
            </v-card-title>
          </v-card>
      </v-hover>
    </v-flex>
  </v-layout>
</div>
</template>

<script>
  import { mapState, mapActions } from "vuex"

  export default {
      name: 'companysfinder',
      computed: mapState(["companys"]),
      methods: mapActions(["findCompanys"]),
  }
</script>