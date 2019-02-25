<template>
  <div>
    <v-form v-model="valid">
      <v-container class='container_position' grid-list-md text-xs-center>
        <h1>Datos de la empresa</h1>
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
        <v-layout>
          <v-btn block color="secondary" dark>Actualizar datos</v-btn>
        </v-layout>
        <h1>otros contactos</h1>
        <v-layout>
          
           <v-flex
            xs12
            md6
          >
            <v-text-field
              v-model="newContact"
              :rules="nameRules"
              label="nuevo contacto"
              required
            ></v-text-field>
          </v-flex>
           <v-flex
            xs12
            md6
          >
            <v-text-field
              v-model="newContactEmail"
              :rules="emailRules"
              label="nuevo contacto"
              required
            ></v-text-field>
          </v-flex>
        </v-layout>
        <v-layout justify-center row wrap>
          <v-flex xs4>
            <v-card>
              <v-card-title class="cyan darken-1">
                <span class="headline white--text">Sarah Mcbeal</span>

                <v-spacer></v-spacer>
                <v-btn dark icon>
                  <v-icon>edit</v-icon>
                </v-btn>
              </v-card-title>

              <v-list>
                <v-list-tile >
                  <v-list-tile-action>
                    <v-icon>phone</v-icon>
                  </v-list-tile-action>

                  <v-list-tile-content>
                    <v-list-tile-title>(650) 555-1234</v-list-tile-title>
                  </v-list-tile-content>
                </v-list-tile>
                <v-divider inset></v-divider>

                <v-list-tile >
                  <v-list-tile-action>
                    <v-icon>mail</v-icon>
                  </v-list-tile-action>

                  <v-list-tile-content>
                    <v-list-tile-title>mcbeal@example.com</v-list-tile-title>
                  </v-list-tile-content>
                </v-list-tile>
              </v-list>
            </v-card>
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
              newContact:'',
              newContactEmail:'',
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
