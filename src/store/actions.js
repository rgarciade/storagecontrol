const { DB_Companys } = require('../back/DB/companys')
const { DB_Articles } = require('../back/DB/articles')
const { DB_Facturation } = require('../back/DB/facturation')
const { DB_Sales } = require('../back/DB/sales')
const createAlert = (store, text) => {
    store.commit('alert', '')
    store.commit('alert', text)
}
const actions = {
    selectPaymentType(store, type) {

        if (type == 1 || type == 2) {
            //1 normal sale
            //2facturation sale
            store.commit('paymentType', type)
        }
    },
    async addToCard(store, idArticle = '') {
        if (idArticle == '') {
            let structure = await DB_Articles.returnStructure()
            let newArticle = {};
            for (var key in structure) {
                let numberTypes = ['int', 'double']
                if (numberTypes.includes(structure[key].type)) {
                    newArticle[key] = 0
                } else {
                    newArticle[key] = ''
                }
                newArticle['numberOfArticles'] = 0
            }
            store.commit("addEmptyArticleToStoreCard", newArticle)
        } else {
            let newCardArticle = await DB_Articles.findIdArticles(idArticle)
            let units = newCardArticle[0].units
            store.commit("addStoreCard", newCardArticle)
        }
    },

    async changeItemPrice(store, articleObject) {

        if (articleObject.idarticles > 0) {
            articleObject.public_price = articleObject.price
            store.commit("changeArticlePrice", { 'article': articleObject })
        } else {
            articleObject.public_price = articleObject.price
            store.commit("changeArticlePrice", { 'article': articleObject })
        }
    },
    async changeItemDescription(store, articleObject) {
        store.commit("changeArticleDescription", { 'article': articleObject })
    },
    async changeItemUnitsNumber(store, articleObject) {
        let cardArticle = articleObject
        if (articleObject.idarticles > 0) {
            cardArticle = await DB_Articles.findIdArticles(articleObject.idarticles)[0]

            let units = cardArticle.units
            let description = cardArticle.description
            if (units < articleObject.units) {
                createAlert(store, `Error, solo tenemos ${ units } unidades de ${description} en stock`)
            }
        }
        cardArticle.numberOfArticles = articleObject.units
        store.commit("changeArticleUnitsNumber", { 'article': cardArticle })
    },
    async subtractOneToCard(store, idArticle) {
        let newCardArticle = await DB_Articles.findIdArticles(idArticle)
        store.commit("subtractToCard", { 'article': newCardArticle })
    },
    async subtractToCard(store, idArticle) {
        let newCardArticle = await DB_Articles.findIdArticles(idArticle)
        store.commit("subtractToCard", { 'article': newCardArticle, remove: true })
    },
    clearArticles(store) {
        store.commit("clearArticles")
        store.commit("reFillArticles")
    },
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
        try {
            store.commit("charging")
            if (text != '' && text) {
                store.commit('articles', await DB_Articles.findArticles(text))
            } else if (text == "") {
                store.commit('articles', [])
            } else if (!text) {
                store.commit('articles', await DB_Articles.findAllArticles())
            }
            store.commit('charged')
        } catch (error) {
            console.error(error)
        }

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
        try {
            store.commit('charging')
            if (text != '') {
                store.commit('companys', await DB_Companys.findCompanys(text))
            } else {
                store.commit('companys', [])
            }
            store.commit('charged')
        } catch (error) {
            console.error(error)
        }

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
        await DB_Companys.updateCompany(id, data).then(() => {
                createAlert(store, 'datos actualizados')
            })
            .catch(e => {
                console.error('error--', e)
                createAlert(store, 'Error al actualizar datos')
            })
        store.commit('charged')

    },
    async createCompany(store, data) {
        store.commit("charging")
        let newId = await DB_Companys.insertCompany(data).then(value => value[0])
        store.commit('charged')
        createAlert(store, 'Comnpañia creada')
        store.commit('addNewCompanyDataId', newId)
    },
    async inserFacturation(store, companyId) {
        store.commit("charging")
        let cartToinsert = []
        store.state.storeCard.forEach(element => {
            cartToinsert.push({
                articleId: element.idarticles,
                price: element.public_price,
                units: element.numberOfArticles,
                description: element.description
            })
        });

        let newId = await DB_Facturation.insertFacturation({
                facturation: { price: store.state.priceStoreCard },
                extra: cartToinsert
            })
            .then(resp => {
                store.commit("clearnStoreCard")
                createAlert(store, 'Nueva factura creada')
            })
            .catch(error => {
                console.error(error.message)
                createAlert(store, 'error al insertar En facturación')
            })
        store.commit('charged')

    },
    async inserSale(store) {
        store.commit("charging")
        let cartToinsert = []
        store.state.storeCard.forEach(element => {
            cartToinsert.push({
                articleId: element.idarticles,
                price: element.public_price,
                units: element.numberOfArticles,
                description: element.description
            })
        });

        let newId = await DB_Sales.insertSales({
                sale: { price: store.state.priceStoreCard },
                extra: cartToinsert
            })
            .then(resp => {
                store.commit("clearnStoreCard")
                createAlert(store, 'Nueva venta Realizada')
            })
            .catch(error => {
                console.error(error.message)
                createAlert(store, 'error al insertar En Sales')
            })
        store.commit('charged')
    }
}
module.exports = actions