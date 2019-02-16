import Vue from "vue"
import Vuex from "vuex"
const { menuRoutes } = require('../front/router.js')
import { createSharedMutations } from "vuex-electron"
Vue.use(Vuex)

export default new Vuex.Store({
    state: {
        count: 0,
        menuRoutes,
        progresActive: false,
        companys: {}
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

            let examplefind = [{
                    "name": "empresa1",
                    "telefono": "666666666",
                    "emailContacto": "aa@.com",
                },
                {
                    "name": "empresa2",
                    "telefono": "7777777",
                    "emailContacto": "bb@.com",
                }
            ]
            store.commit('companys', examplefind)
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
            state.companys = finded
        }
    },
    plugins: [createSharedMutations()],
    strict: process.env.NODE_ENV !== "production"
})