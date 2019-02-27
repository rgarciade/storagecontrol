import Vue from "vue"
import Vuex from "vuex"
const { menuRoutes } = require('../front/router.js')
const { DB_Companys } = require('../back/DB/companys')
import { createSharedMutations } from "vuex-electron"
Vue.use(Vuex)
export default new Vuex.Store({
    state: {
        count: 3,
        menuRoutes,
        companyData: {},
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
        async findCompanys(store, text) {
            store.commit('charging')
            store.commit('companys', await DB_Companys.findCompanys(text))
        },
        async companyConfigurationView(store, companyName) {
            let companyData = await DB_Companys.findCompanyWithData(companyName)
            let companyDataContacts = await DB_Companys.findCompanyDataContacts(companyData[0].id)
            store.commit('companyData', companyData)
            store.commit('companyDataContacts', companyDataContacts)
        },
        async addNewContact(store, data) {
            store.commit("charging")
            let response = await DB_Companys.insertCompanyWithCompanyId(data.id, data.newContactEmail, data.newContact, data.newContacttelephone)
            let companyDataContacts = await DB_Companys.findCompanyDataContacts(data.id)
            store.commit('companyDataContacts', companyDataContacts)
            store.commit('charged')

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
            state.progresActive = false

        },
        companyData(state, data) {
            console.log('1', data)
            state.companyData = data
        },
        companyDataContacts(state, data) {
            console.log('2', data)
            state.companyDataContacts = data
        }
    },
    plugins: [createSharedMutations()],
    strict: process.env.NODE_ENV !== "production"
})