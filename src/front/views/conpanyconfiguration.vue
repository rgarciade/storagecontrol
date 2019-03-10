<template>
  <div>
    <v-form v-model="valid">
      <v-container class='container_position' grid-list-md >
        <h1>Datos de la empresa</h1>
        <v-layout>
          <v-flex xs12 md12 >
            <v-text-field
              :value="companyData.name"
              id="c_name"
              :rules="nameRules"
              label="Nombre de la compañia"
              required
            ></v-text-field>
          </v-flex>
        </v-layout>
        <v-layout>
           <v-flex xs12 md4 >
            <v-text-field
              :value="companyData.contact"
              id="c_contact"
              
              :rules="nameRules"
              label="nombre de contacto"
              required
            ></v-text-field>
          </v-flex>
           <v-flex xs12 md4 >
            <v-text-field
              :value="companyData.telephone"
              id="c_telephone"
              
              :rules="telephoneRules"
              label="telefono de contactor"
              required
            ></v-text-field>
          </v-flex>
           <v-flex xs12 md4 >
            <v-text-field
              :value="companyData.email"
              id="c_email"
              
              :rules="emailRules"
              label="email de contacto"
              required
            ></v-text-field>
          </v-flex>
        </v-layout>
        <v-layout>
          <v-btn block color="secondary"  @click="updateCompany" dark>Actualizar datos</v-btn>
        </v-layout>
        <h1>otros contactos</h1>
        <v-layout>
          <v-flex xs12 md3 >
            <v-text-field
              v-model="newContact"
              :rules="nameRules"
              label="nuevo contacto"
              required
            >
            </v-text-field>
          </v-flex>
          <v-flex xs12 md3 >
            <v-text-field
              v-model="newContactEmail"
              :rules="emailRules"
              label="email de contacto"
              required
            ></v-text-field>
          </v-flex>
          <v-flex xs12 md3 >
            <v-text-field
              v-model="newContacttelephone"
              :rules="telephoneRules"
              label="telefono de contacto"
              required
            ></v-text-field>
          </v-flex>
          <v-flex
            xs12
            md1
          >
            <v-btn flat icon  @click="insertNewContact">
              <v-icon>playlist_add</v-icon>
            </v-btn>
          </v-flex>
        </v-layout>
        <v-layout justify-center row wrap>
          <v-flex xs4 
              v-for="companyDataContact in companyDataContacts"
              :key="companyDataContact.idcontacts">
            <v-card>
              <v-card-title class="cyan darken-1">
                <span class="headline white--text">{{companyDataContact.name}}</span>

                <v-spacer></v-spacer>
                <v-btn dark icon>
                  <v-icon>edit</v-icon>
                </v-btn>
              </v-card-title>

              <v-list>
                <v-list-tile v-if="companyDataContact.telephone">
                  <v-list-tile-action>
                    <v-icon>phone</v-icon>
                  </v-list-tile-action>

                  <v-list-tile-content >
                    <v-list-tile-title >{{companyDataContact.telephone}}</v-list-tile-title>
                  </v-list-tile-content>
                </v-list-tile>
                <v-divider inset v-if="companyDataContact.telephone"></v-divider>

                <v-list-tile >
                  <v-list-tile-action>
                    <v-icon>mail</v-icon>
                  </v-list-tile-action>
                  <v-list-tile-content>
                    <v-list-tile-title>{{companyDataContact.email}}</v-list-tile-title>
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
         // this.companyName = this.$route.params.companyName
          this.companyConfigurationView(this.companyName)
      },
      data(){
          return {
              companyName:"casa",
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
              newContacttelephone:'',
              nameRules: [
                v => !!v || 'nombre requerido',
                v => v.length >= 2 || 'debe tener minimo 3 letras'
              ],
          }
      },
      computed: mapState(["companyData","companyDataContacts"]),
      methods: Object.assign({},
                      mapActions(["companyConfigurationView","addNewContact","updateCompanyData"]),{
                      insertNewContact() {
                        let contact = {
                          id:this.companyData.id,
                          newContact:this.newContact,
                          newContactEmail:this.newContactEmail,
                          newContacttelephone:this.newContacttelephone
                        }
                        this.addNewContact(contact)
                      },
                      updateCompany(){
                        let company = {
                          companyId:this.companyData.id,
                          name: document.getElementById('c_name').value,
                          contact: document.getElementById('c_contact').value,
                          telephone: document.getElementById('c_telephone').value,
                          email: document.getElementById('c_email').value,
                        }
                        if(
                          company.name != this.companyData.name ||
                          company.contact != this.companyData.contact ||
                          company.telephone != this.companyData.telephone ||
                          company.email != this.companyData.email){
                            this.updateCompanyData(company)
                          }
                        console.log(company)
                        //this.companyData.id
                      } 

                    })
  }
</script>
