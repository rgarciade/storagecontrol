<template>
  <div>
<v-form v-model="valid">
      <v-container>
        <v-layout>
          <v-flex
            xs12
            md12
          >
            <v-text-field
              v-model="companyName"
              :rules="nameRules"
              label="Nombre de la compañia"
              required
            ></v-text-field>
          </v-flex>
        </v-layout>
        <v-layout>
           <v-flex
            xs12
            md4
          >
            <v-text-field
              v-model="nombreContacto"
              :rules="nameRules"
              label="nombre de contacto"
              required
            ></v-text-field>
          </v-flex>
           <v-flex
            xs12
            md4
          >
            <v-text-field
              v-model="telephone"
              :rules="telephoneRules"
              label="telefono de contactor"
              required
            ></v-text-field>
          </v-flex>
           <v-flex
            xs12
            md4
          >
            <v-text-field
              v-model="email"
              :rules="emailRules"
              label="email de contacto"
              required
            ></v-text-field>
          </v-flex>
        </v-layout>
      </v-container>
    </v-form>
 </div>
</template>

<script>
  import { mapState, mapActions } from "vuex"

  export default {
      name: 'conpanyconfiguration',
      mounted(){
          //this.companyName = this.$route.params.companyName
          this.companyConfigurationView(this.companyName)
      },
      data(){
          return {
              companyName:"casa",
              telephone:'',
              telephoneRules: [
                v => !!v || 'Teléfono requerido',
                v => !isNaN(v) || 'solo se admiten caracteres numricos'
              ],
              email: '',
              emailRules: [
                v => !!v || 'E-mail requerido',
                v => /.+@.+/.test(v) || 'debe usar un E-mail valido'
              ],
              nombreContacto: '',
              nameRules: [
                v => !!v || 'nombre requerido',
                v => v.length >= 2 || 'debe tener minimo 3 letras'
              ],
          }
      },
      computed: mapState(["company"]),
      methods: mapActions(["companyConfigurationView"])
  }
</script>