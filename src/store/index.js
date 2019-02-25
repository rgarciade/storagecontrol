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
        companyConfigurationView(store, companyName) {
            console.log(companyName)
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

        }
    },
    plugins: [createSharedMutations()],
    strict: process.env.NODE_ENV !== "production"
})