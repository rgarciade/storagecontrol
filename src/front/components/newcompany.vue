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
                <v-text-field v-model="companyData.name" :rules="nameRules" label="Nombre de la compañia" required ></v-text-field>
                <v-text-field v-model="companyData.cif" label="cif de la compañia" ></v-text-field>
                <v-text-field v-model="companyData.street" id="c_street" label="calle"></v-text-field>
                <v-text-field v-model="companyData.postalcode" id="c_postalcode" label="codigo postal"></v-text-field>
                <v-text-field v-model="companyData.city" id="c_city" label="localidad/ciudad"></v-text-field>
                <v-text-field v-model="companyData.state" id="c_province" label="provincia"></v-text-field>
                <v-text-field v-model="companyData.telephone" label="telefono de contactor" ></v-text-field>
            	<v-text-field v-model="companyData.mobile" id="c_mobile" label="movil"></v-text-field>
                <v-text-field v-model="companyData.contact" label="nombre de contacto" ></v-text-field>
				<v-text-field v-model="companyData.banck" id="c_banck" label="banco"></v-text-field>
				<v-text-field v-model="companyData.cta" id="c_cta" :rules="controlDigit" label="cuenta"></v-text-field>
                <v-text-field id="correo" v-model="companyData.email" label="email de facturacion y contacto" ></v-text-field>
                <v-textarea
                  solo
                  id="c_notas"
                  label="Notas"
                  v-model="companyData.notas"
                  box
                  clearable
                  auto-grow
                  counter="512"
                ></v-textarea>
             </v-form>
            </v-card-text>
            <v-card-actions>
                <v-btn
                :disabled="!valid" @click="newCompany" color="success">Crear compañia</v-btn>
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
				cif:'',
				street:'',
				postalcode:'',
				city:'',
				state:'',
				telephone:'',
				mobile:'',
				contact:'',
				banck:'',
				cta:'',
				email:'',
				notas:''
            },
            nameRules: checkInputs.nameRules,
            emailRules: checkInputs.emailRules,
            telephoneRules: checkInputs.telephoneRules,
            cifRules: checkInputs.cifRules,
          }
        },
        props: {
          active: Boolean,
          redirect: {
            type: Boolean,
            default: true
          }
        },
        computed: mapState(["newCompanyDataId"]),
        methods: Object.assign({},
          mapActions(["createCompany"]),{
          disableModal(){
            this.$emit('disable', false)
          },
          async newCompany(){
            if(this.validate()){
				debugger
              let newId = await this.createCompany(this.companyData)
            }


          },
          validate () {
            if (this.$refs.form.validate()) {
              return true
            }
            return false
          }

        }),
        watch: {
          newCompanyDataId : function (id) {
            if(this.redirect){
              this.$router.push({name:'conpanyconfiguration',params:{companyId:id}})
            }else{
              this.$emit('disable', false)
              this.$emit('companyName', this.companyData.name)
            }
          }
        }
    }
</script>
<style>
.v-progress-linear {
    margin: 0
}
</style>
