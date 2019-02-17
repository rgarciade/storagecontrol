import Vue from "vue"
import Vuex from "vuex"
const { menuRoutes } = require('../front/router.js')
import { createSharedMutations } from "vuex-electron"
Vue.use(Vuex)

export default new Vuex.Store({
    state: {
        count: 3,
        menuRoutes,
        progresActive: false,
        companys: [{
            "name": "empresa1",
            "telephon": "666666666",
            "emailContacto": "aa@.com"
        }]
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
        findCompanys(store, text) {

            store.commit('companys', [{
                "name": "empresa1222",
                "telephon": "666666666",
                "emailContacto": "aa@.com"
            }])
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
            finded.forEach(function(element) {
                state.companys.push(element)
            });

        }
    },
    plugins: [createSharedMutations()],
    strict: process.env.NODE_ENV !== "production"
})