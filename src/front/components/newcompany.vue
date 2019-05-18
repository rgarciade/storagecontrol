<template>
    <v-dialog v-model="active" persistent max-width="500px">
          <v-card>
            <v-card-title>
              Creación de Cliente
            </v-card-title>
            <v-card-text>
                <v-form v-model="valid">
                <v-text-field
                    :value="companyData.name"
                    id="c_name"
                    :rules="nameRules"
                    label="Nombre de la compañia"
                    required
                ></v-text-field>
                <v-text-field
                    :value="companyData.contact"
                    id="c_contact"
                    :rules="nameRules"
                    label="nombre de contacto"
                    required
                ></v-text-field>
             </v-form>
            </v-card-text>
            <v-card-actions>
                <v-btn 
                :disabled="!valid">Crear usuario</v-btn>
                <v-btn @click="disableModal()">Cerrar</v-btn>
            </v-card-actions>
          </v-card>
        </v-dialog>
</template>
<script>
    import { mapActions } from "vuex"
    export default {
        name: 'newcompany',
        data(){
          return {
            valid: true,
            companyData:{
                name:'',
                contact:''
            }
          }
        },
        props: {
          active: Boolean
        },
        methods: Object.assign({},
          mapActions(["createCompany"]),{
          disableModal(){
            this.$emit('disable', false)
          }
        })                    
    }
</script>
<style>
.v-progress-linear {
    margin: 0
}
</style>