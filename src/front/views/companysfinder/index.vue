<template>
  <div>
    <div>
    <v-card>
      <v-card-title class="headline primary lighten-3">
          Empresas
      </v-card-title>
    </v-card>
    <v-text-field
      v-on:keyup ="findCompanys"
      label="Solo"
      placeholder="Placeholder"
      solo
    ></v-text-field>
</div>

  <v-layout             
    v-for="company in companys"
    :key="company.key" row justify-space-around
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
              </div>
            </v-card-title>
          </v-card>
      </v-hover>
    </v-flex>
  </v-layout>
</div>
</template>

<script src="./companysfinder.js" />
<style src="./companysfinder.css" />