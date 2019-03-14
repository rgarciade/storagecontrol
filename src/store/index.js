import Vue from "vue"
import Vuex from "vuex"
const { menuRoutes } = require('../front/router.js')
const { DB_Companys } = require('../back/DB/companys')
import { createSharedMutations } from "vuex-electron"
Vue.use(Vuex)
const createAlert = (store, text) => {
    store.commit('alert', '')
    store.commit('alert', text)
}
export default new Vuex.Store({
    state: {
        count: 3,
        menuRoutes,
        companyData: {
            id: '',
            name: '',
            contact: '',
            location: '',
            telephone: '',
            email: ''
        },
        alert: "",
        companyDataContacts: [],
        progresActive: false,
        companys: []
    },

    actions: {
        increment(store) {
            store.commit("increment")
        },
        decrement(store) {
            store.commit("decrement")
        },
        charging(store) {
            store.commit("charging")
        },
        charged(store) {
            store.commit("charged")
        },
        initCount(store, initial) {
            store.commit('count', initial)
        },
        resetAlert(store) {
            store.commit('alert', '')
        },
        async findCompanys(store, text) {
            store.commit('charging')
            if (text != '') {
                store.commit('companys', await DB_Companys.findCompanys(text))
            } else {
                store.commit('companys', [])
            }
            store.commit('charged')
        },
        async companyConfigurationView(store, companyName) {
            let companyData = await DB_Companys.findCompanyWithData(companyName)
            let companyDataContacts = await DB_Companys.findCompanyDataContacts(companyData[0].id)
            store.commit('companyData', companyData)
            store.commit('companyDataContacts', companyDataContacts)
        },
        async addNewContact(store, data) {
            store.commit("charging")
            await DB_Companys.insertContactWithCompanyId(data.id, data.newContactEmail, data.newContact, data.newContacttelephone)
            let companyDataContacts = await DB_Companys.findCompanyDataContacts(data.id)
            store.commit('companyDataContacts', companyDataContacts)
            store.commit('charged')
            createAlert(store, 'contacto añadido')
        },
        async deleteContactFromId(store, data) {
            store.commit("charging")
            await DB_Companys.deleteContacts(data.deleteFocustId)
            let companyDataContacts = await DB_Companys.findCompanyDataContacts(data.companyId)
            store.commit('companyDataContacts', companyDataContacts)
            store.commit('charged')
            createAlert(store, 'contacto eliminado')
        },
        async updateCompanyData(store, data) {
            store.commit("charging")
            let id = data.companyId
            delete data.companyId
            await DB_Companys.updateCompany(id, data)
            store.commit('charged')
            createAlert(store, 'datos actualizados')
        }
    },

    mutations: {
        count(state, initial = 1) {
            state.count = initial
        },
        increment(state) {
            state.count++
        },
        decrement(state) {
            state.count--
        },
        charging(state) {
            state.progresActive = true
        },
        charged(state) {
            state.progresActive = false
        },
        companys(state, finded) {
            let temporalState = []
            finded.forEach(function(element) {
                temporalState.push(element)
            });
            state.companys = temporalState

        },
        alert(state, msg) {
            state.alert = msg
        },
        companyData(state, data) {
            state.companyData = data[0]
        },
        companyDataContacts(state, data) {
            state.companyDataContacts = data
        }
    },
    plugins: [createSharedMutations()],
    strict: process.env.NODE_ENV !== "production"
})