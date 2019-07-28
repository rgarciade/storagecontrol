<template>
    <v-dialog v-model="active" persistent max-width="70%">
          <v-card>
            <v-card-title>
              Creación de Cliente
            </v-card-title>
            <v-card-text>
                <v-form 
                ref="form"
                lazy-validation
                v-model="valid">
                <v-text-field
                    v-model="companyData.name"
                    :rules="nameRules"
                    label="Nombre de la compañia"
                    required
                ></v-text-field>
                <v-text-field
                    v-model="companyData.contact"
                    :rules="nameRules"
                    label="nombre de contacto"
                    required
                ></v-text-field>
                <v-text-field
                    v-model="companyData.telephone"
                    label="telefono de contactor"
                    :rules="telephoneRules"
                    required
                ></v-text-field>
                <v-text-field
                    v-model="companyData.email"
                    label="email de contactor"
                    :rules="emailRules"
                    required
                ></v-text-field>
             </v-form>
            </v-card-text>
            <v-card-actions>
                <v-btn 
                :disabled="!valid" @click="newCompany" color="success">Crear usuario</v-btn>
                <v-btn @click="disableModal()" >Cerrar</v-btn>
            </v-card-actions>
          </v-card>
        </v-dialog>
</template>
<script>
    import { mapActions,mapState } from "vuex"
    import { checkInputs } from "../../common/commonfunctions"
    export default {
        name: 'newcompany',
        data(){
          return {
            valid: true,
            companyData:{
                name:'',
                contact:'',
                telephone:'',
                email:''
            },
            nameRules: checkInputs.nameRules,
            emailRules: checkInputs.emailRules,
            telephoneRules: checkInputs.telephoneRules,
          }
        },
        props: {
          active: Boolean
        },
        computed: mapState(["newCompanyDataId"]),
        methods: Object.assign({},
          mapActions(["createCompany"]),{
          disableModal(){
            this.$emit('disable', false)
          },
          async newCompany(){
            if(this.validate()){
              let newId = await this.createCompany(this.companyData)
             // this.$router.push({name:'conpanyconfiguration'})
            }
            
            
          },
          validate () {
            if (this.$refs.form.validate()) {
              this.snackbar = true
              return true
            }
            return false
          }

        }),
        watch: {
          newCompanyDataId : function (id) {
            this.$router.push({name:'conpanyconfiguration',params:{companyId:id}})
          }
        }                    
    }
</script>
<style>
.v-progress-linear {
    margin: 0
}
</style>