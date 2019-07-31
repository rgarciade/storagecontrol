import Vue from "vue"
import Vuex from "vuex"
const { menuRoutes } = require('../front/router.js')
const { DB_Companys } = require('../back/DB/companys')
const { DB_Articles } = require('../back/DB/articles')
const { basePrice } = require('../common/commonfunctions')
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
        newCompanyDataId: 0,
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
        createStoreAlert(store, alert) {
            createAlert(store, alert)
        },
        async findArticles(store, text) {
            store.commit("charging")
            if (text != '') {
                store.commit('articles', await DB_Articles.findArticles(text))
            } else {
                store.commit('articles', await DB_Articles.findAllArticles())
            }
            store.commit('charged')
        },

        async addNewArticle(store, data) {
            store.commit("charging")
            await DB_Articles.insertArticle(data).then(value => {
                value = value[0]
                if (value) {
                    createAlert(store, 'articulo creado')
                }
            }).catch(error => {
                createAlert(store, 'se produjo un error al crear el articulo')
            })
            store.commit('charged')

        },
        async updateArticle(store, data) {
            store.commit("charging")
            let id = data.idarticles
            delete data.idarticles
            await DB_Articles.updateArticle(id, data)
            store.commit('articles', await DB_Articles.findArticles())
            store.commit('charged')
            createAlert(store, 'articulo actualizado')
        },
        async deleteArticleFromId(store, data) {
            store.commit("charging")
            await DB_Articles.deleteArticle(data.idarticles)
            store.commit('articles', await DB_Articles.findArticles())
            store.commit('charged')
            createAlert(store, 'articulo eliminado')
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
        async companyConfigurationView(store, companyId) {
            let companyData = await DB_Companys.findCompanyWithData(companyId)
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
        },
        async createCompany(store, data) {
            store.commit("charging")
            let newId = await DB_Companys.insertCompany(data).then(value => value[0])
            store.commit('charged')
            createAlert(store, 'Comnpañia creada')
            store.commit('addNewCompanyDataId', newId)
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
            finded.forEach(function (element) {
                temporalState.push(element)
            });
            state.companys = temporalState

        },
        articles(state, finded) {
            let temporalState = []
            finded.forEach(function (element) {
                element.price_without_vat = basePrice(element.public_price, 21)
                temporalState.push(element)
            });
            state.articles = temporalState
        },
        alert(state, msg) {
            state.alert = msg
        },
        companyData(state, data) {
            state.companyData = data[0]
        },
        addNewCompanyDataId(state, id) {
            state.newCompanyDataId = id
        },
        companyDataContacts(state, data) {
            state.companyDataContacts = data
        }
    },
    plugins: [createSharedMutations()],
    strict: process.env.NODE_ENV !== "production"
})