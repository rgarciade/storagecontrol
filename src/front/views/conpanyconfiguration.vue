<template>
  <div>
    <div class="arrowback" @click="goLastRoute">
      <v-icon>arrow_back_ios</v-icon>
    </div>
    <v-form v-model="valid">
      <v-container class='container_position' grid-list-md >
        <h1>Datos de la empresa</h1>
        <v-layout>
          <v-flex xs6 md6 >
            <v-text-field
              :value="companyData.name"
              id="c_name"
              :rules="nameRules"
              label="Nombre de la compañia"
              required
            ></v-text-field>
          </v-flex>
          <v-flex xs6 md6 >
            <v-text-field
              :value="companyData.cif"
              id="c_cif"
              label="cif de la compañia"
              required
            ></v-text-field>
          </v-flex>
        </v-layout>
        <v-layout>
          <v-flex xs12  md3>
            <v-text-field
              :value="companyData.telephone"
              id="c_telephone"
              
              :rules="telephoneRules"
              label="telefono de contactor"
              required
            ></v-text-field>
          </v-flex>
          <v-flex xs12  md2>
            <v-text-field
              :value="companyData.mobile"
              id="c_mobile"
              label="movil"
            ></v-text-field>
          </v-flex>
          <v-flex xs12  md2>
            <v-text-field
              :value="companyData.contact"
              id="c_contact"
              :rules="nameRules"
              label="nombre de contacto"
              required
            ></v-text-field>
          </v-flex>
          <v-flex xs12  md3>
              <v-text-field
                :value="companyData.banck"
                id="c_banck"
                label="banco"
              ></v-text-field>
          </v-flex>
          <v-flex xs12  md2>
            <v-text-field
              :value="companyData.cta"
              id="c_cta"
              :rules="controlDigit"
              label="cta"
            ></v-text-field>
          </v-flex>
        </v-layout>
        <v-layout>
          <v-flex xs12 m2>
            <v-text-field
              :value="companyData.email"
              id="c_email"
              
              :rules="emailRules"
              label="email de facturación"
              required
            ></v-text-field>
          </v-flex>
          <v-flex xs12  md2>
            <v-text-field
              :value="companyData.state"
              id="c_province"
              label="provincia"
            ></v-text-field>
            </v-flex>
            <v-flex xs12  md2>
              <v-text-field
                :value="companyData.city"
                id="c_city"
                label="localidad/ciudad"
              ></v-text-field>
            </v-flex>
            <v-flex xs12  md3>
              <v-text-field
                :value="companyData.postalcode"
                id="c_postalcode"
                label="codigo postal"
              ></v-text-field>
            </v-flex>
            <v-flex xs12  md3>
              <v-text-field
                :value="companyData.street"
                id="c_street"
                label="calle"
              ></v-text-field>
            </v-flex>
          </v-layout>
          <v-layout>
            <v-flex xs12 >
              <v-textarea
                solo
                id="c_notas"
                label="Notas"
                :value="companyData.notas"
                box
                clearable
                auto-grow
                counter="512"
              ></v-textarea>
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
              :error="contactEmailError"
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
              <v-icon>person_add</v-icon>
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
                <v-btn dark icon @click="deleteContact(companyDataContact.idcontacts)">
                  <v-icon color="red lighten-2">
                    delete_forever</v-icon>
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
  import { findChangesInObjetExist,checkInputs } from "../../common/commonfunctions"

  export default {
      name: 'conpanyconfiguration',
      async mounted(){
        let id = await this.$route.params.companyId
        if( id !== undefined){
          this.companyId = id
          this.companyName = this.companyConfigurationView(id)
        }else{
          this.$router.push({name:'Empresas'})
        }
      },
      data(){
          return {
              companyName:'',
              telephoneRules: checkInputs.telephoneRules,
              email: '',
              contactEmailError: false,
              emailRules: checkInputs.emailRules,
              nombreContacto: '',
              newContact:'',
              newContactEmail:'',
              newContacttelephone:'',
              nameRules: checkInputs.nameRules,
              controlDigit: checkInputs.controlDigit,
          }
      },
      computed: mapState(["companyData","companyDataContacts"]),
      methods: Object.assign({},
                      mapActions(["companyConfigurationView","addNewContact","updateCompanyData","deleteContactFromId"]),{
                      insertNewContact() {
                        let contact = {
                          id:this.companyData.id,
                          newContact:this.newContact,
                          newContactEmail:this.newContactEmail,
                          newContacttelephone:this.newContacttelephone
                        }
                        if(contact.newContactEmail && /.+@.+/.test(contact.newContactEmail)){
                          this.contactEmailError = false
                          this.addNewContact(contact)
                        }else{
                          this.contactEmailError = true
                        }
                      },
                      updateCompany(){
                        let company = {
                          companyId:this.companyData.id,
                          cif:document.getElementById('c_cif').value,
                          name: document.getElementById('c_name').value,
                          contact: document.getElementById('c_contact').value,
                          telephone: document.getElementById('c_telephone').value,
                          email: document.getElementById('c_email').value,
                          mobile: document.getElementById('c_mobile').value,
                          banck: document.getElementById('c_banck').value.toUpperCase(),
                          cta: document.getElementById('c_cta').value,
                          province: document.getElementById('c_province').value,
                          city: document.getElementById('c_city').value,
                          postalcode: document.getElementById('c_postalcode').value,
                          street: document.getElementById('c_street').value,
                          notas: document.getElementById('c_notas').value
                        } 
                        console.log(company)
                        if(findChangesInObjetExist(company,this.companyData)){
                            this.updateCompanyData(company)
                          }
                       
                      },
                      deleteContact(deleteFocustId){
                          const data = {
                            companyId:this.companyData.id,
                            deleteFocustId:deleteFocustId
                          }
                          this.deleteContactFromId(data)
                      },
                      goLastRoute(){
                        this.$router.go(-1)
                      }

                    })
  }
</script>
