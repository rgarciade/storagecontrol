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
		moneyBox:{
			actualMoneyInBox : 0,
			actualMoneyCard : 0,
			dayToReport: new Date().toISOString().substr(0, 10),
			openReport: null,
			closeReport: null,
			lastReports:[]
		},
        printType:'nada',
        paymentType: 1,
        creditCard: 0,
        tempItemNumber: -2,
        storeCard: [],
        purchaseToModify: [],
        itemsCardList: [],
        priceStoreCard: 0,
        incomingMoney: 0,
        pricePurchaseToModify: 0,
        priceTicketPreview: 0,
        newCompanyDataId: 0,
        alert: "",
        companyDataContacts: [],
        progresActive: false,
        companys: [],
        facturations:[],
        tickets:[],
        FacturationListVisibility:true,
        ticketsListVisibility:true,
        ActualFacturationId:0,
        FacturationPreviewVisibility:false,
        TicketPreviewVisibility:false,
        UpdateButton:true
    },
    actions,
    mutations,
    plugins: [createSharedMutations()],
    strict: process.env.NODE_ENV !== "production"
})
