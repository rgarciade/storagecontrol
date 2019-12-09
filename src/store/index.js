import Vue from "vue"
import Vuex from "vuex"
const { menuRoutes } = require('../front/router.js')
const actions = require('./actions')
const mutations = require('./mutations')
import { createSharedMutations } from "vuex-electron"
Vue.use(Vuex)
export default new Vuex.Store({
    state: {
        count: 3,
        menuRoutes,
        companyData: {
            id: '',
            cif: '',
            name: '',
            contact: '',
            location: '',
            telephone: '',
            email: ''
        },
        articles: [{
            productid: null,
            description: null,
            units: null,
            purchase_price: null,
            price_without_vat: null,
            public_price: null
        }],
        paymentType: 1,
        tempItemNumber: -2,
        storeCard: [],
        priceStoreCard: 0,
        newCompanyDataId: 0,
        alert: "",
        companyDataContacts: [],
        progresActive: false,
        companys: []
    },
    actions,
    mutations,
    plugins: [createSharedMutations()],
    strict: process.env.NODE_ENV !== "production"
})