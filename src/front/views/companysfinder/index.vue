<template>
  <div>
    <div>
    <v-card>
      <v-card-title class="headline primary lighten-3">
          Empresas
      </v-card-title>
    </v-card>
    <v-text-field
      label="Solo"
      placeholder="Placeholder"
      solo
    ></v-text-field>
</div>
<div >
  <v-layout row justify-space-around>
    <v-flex xs9>
      <v-hover>
        <v-card color="blue-grey darken-2" 
              hover
              class="white--text ">
            <v-card-title primary-title>
              <div>
                <div class="headline">Unlimited music now</div>
                <span>Listen to your favorite artists and albums whenever and wherever, online and offline.</span>
              </div>
            </v-card-title>
          </v-card>
      </v-hover>
    </v-flex>
  </v-layout>
</div>
</div>
</template>

<script src="./companysfinder.js" />
<style src="./companysfinder.css" />