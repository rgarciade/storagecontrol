<template>
    <div>
          <v-card
            color="red lighten-2"
            dark >
                <v-card-title class="headline red lighten-3">
                    Empresas
                </v-card-title>
                <v-card-text>
                <v-autocomplete
                    v-model="companys.name"
                    :items="items"
                    :loading="isLoading"
                    :search-input.sync="search"
                    color="white"
                    hide-no-data
                    hide-selected
                    item-text="Description"
                    item-value="API"
                    label="Razón social"
                    placeholder="escribe...."
                    prepend-icon="mdi-database-search"
                    return-object
                ></v-autocomplete>
                </v-card-text>
                <v-btn
                    color="grey darken-3"
                    @click="findCompanys"
                > Buscar
                    <v-icon right>mdi-close-circle</v-icon>
                </v-btn>
        </v-card>    
    </div>
    
</template>
<script src="./companysfinder.js" />
<style src="./companysfinder.css" />