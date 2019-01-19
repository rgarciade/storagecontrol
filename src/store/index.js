import Vue from "vue"
import Vuex from "vuex"
const { menuRoutes } = require('../router.js')
import { createPersistedState, createSharedMutations } from "vuex-electron"
Vue.use(Vuex)

export default new Vuex.Store({
    state: {
        count: 0,
        menuRoutes,
        progresActive: false
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
        }
    },
    plugins: [createPersistedState(), createSharedMutations()],
    strict: process.env.NODE_ENV !== "production"
})