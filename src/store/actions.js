const { DB_Companys } = require('../back/DB/companys')
const { DB_Articles } = require('../back/DB/articles')
const { DB_Facturation } = require('../back/DB/facturation')
const { DB_Sales } = require('../back/DB/sales')
const { printThermalPrinterSales, printThermalPrinterFacturation } = require('../back/components/printer/thermalprinter')
const { printFacturationFromFacturation } = require('../back/components/facturation/')
const createAlert = (store, text) => {
    store.commit('alert', '')
    store.commit('alert', text)
}
const actions = {
    selectPaymentType(store, type) {
        store.commit('creditCard', type)
    },
    needFacturation(store, type) {
        //paymentType
        //1 facturation
        //0 normal 
        store.commit('paymentType', type)
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
            store.commit("recalculatePrice")
        } else if (idArticle < -1) {
            let newCardArticle = [{
                'idarticles': idArticle
            }]
            store.commit("addStoreCard", newCardArticle)
            store.commit("recalculatePrice")
        } else {
            let newCardArticle = await DB_Articles.findIdArticles(idArticle)
            store.commit("addStoreCard", newCardArticle)
            store.commit("recalculatePrice")
        }
    },
    async addToPurchaseModification(store, idArticle = '') {
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
            store.commit("addEmptyArticleToPurchaseModification", newArticle)
            store.commit("recalculatePricePurchaseModification")
        } else if (idArticle < -1) {
            let newCardArticle = [{
                'idarticles': idArticle
            }]          
            store.commit("addPurchaseModification", newCardArticle)
            store.commit("recalculatePricePurchaseModification")
        } else {
            let newCardArticle = await DB_Articles.findIdArticles(idArticle)
            store.commit("addPurchaseModification", newCardArticle)
            store.commit("recalculatePricePurchaseModification")
        }
    },

    async changeItemPrice(store, articleObject) {

        if (articleObject.idarticles > 0) {
            articleObject.public_price = articleObject.price
            store.commit("changeArticlePrice", { 'article': articleObject })
            store.commit("recalculatePrice")
        } else {
            articleObject.public_price = articleObject.price
            store.commit("changeArticlePrice", { 'article': articleObject })
            store.commit("recalculatePrice")
        }
    },
    async changePurchaseModificationItemPrice(store, articleObject) {

        if (articleObject.idarticles > 0) {
            articleObject.public_price = articleObject.price
            store.commit("changePurchaseModificationArticlePrice", { 'article': articleObject })
            store.commit("recalculatePricePurchaseModification")
        } else {
            articleObject.public_price = articleObject.price
            store.commit("changePurchaseModificationArticlePrice", { 'article': articleObject })
            store.commit("recalculatePricePurchaseModification")
        }
    },
    async changeItemDescription(store, articleObject) {
        store.commit("changeArticleDescription", { 'article': articleObject })
    },
    async changePurchaseModificationItemDescription(store, articleObject) {
        store.commit("changePurchaseModificationArticleDescription", { 'article': articleObject })
    },
    async changeItemUnitsNumber(store, articleObject) {
        let cardArticle = articleObject
        if (articleObject.idarticles > 0) {
            let cardArticles = await DB_Articles.findIdArticles(articleObject.idarticles)
            cardArticle = cardArticles[0]
            let units = cardArticle.units
            let description = cardArticle.description
            if (units < articleObject.units) {
                createAlert(store, `Error, solo tenemos ${ units } unidades de ${description} en stock`)
            }
        }
        cardArticle.numberOfArticles = articleObject.units
        store.commit("changeArticleUnitsNumber", { 'article': cardArticle })
        store.commit("recalculatePrice")
    },
    async changePurchaseModificationItemUnitsNumber(store, articleObject) {
        let cardArticle = articleObject
        if (articleObject.idarticles > 0) {
            let cardArticles = await DB_Articles.findIdArticles(articleObject.idarticles)
            cardArticle = cardArticles[0]
            let units = cardArticle.units
            let description = cardArticle.description
            if (units < articleObject.units) {
                createAlert(store, `Error, solo tenemos ${ units } unidades de ${description} en stock`)
            }
        }
        cardArticle.numberOfArticles = articleObject.units
        store.commit("changePurchaseModificationArticleUnitsNumber", { 'article': cardArticle })
        store.commit("recalculatePricePurchaseModification")
    },
    async subtractOneToCard(store, idArticle) {
        let newCardArticle = []
        if (idArticle > 0) {
            newCardArticle = await DB_Articles.findIdArticles(idArticle)
        } else {
            newCardArticle = [{
                'idarticles': idArticle
            }]
        }
        store.commit("subtractToCard", { 'article': newCardArticle })
        store.commit("recalculatePrice")
    },
    async subtractOneToPurchaseModification(store, idArticle) {
        let newCardArticle = []
        if (idArticle > 0) {
            newCardArticle = await DB_Articles.findIdArticles(idArticle)
        } else {
            newCardArticle = [{
                'idarticles': idArticle
            }]
        }
        store.commit("subtractToPurchaseModification", { 'article': newCardArticle })
        store.commit("recalculatePricePurchaseModification")
    },
    async subtractToCard(store, idArticle) {
        let newCardArticle = []
        if (idArticle > 0) {
            newCardArticle = await DB_Articles.findIdArticles(idArticle)
        } else {
            newCardArticle = [{
                'idarticles': idArticle
            }]
        }
        store.commit("subtractToCard", { 'article': newCardArticle, remove: true })
        store.commit("recalculatePrice")
    },
    async subtractToPurchaseModification(store, idArticle) {
        let newCardArticle = []
        if (idArticle > 0) {
            newCardArticle = await DB_Articles.findIdArticles(idArticle)
        } else {
            newCardArticle = [{
                'idarticles': idArticle
            }]
        }
        store.commit("subtractToPurchaseModification", { 'article': newCardArticle, remove: true })
        store.commit("recalculatePricePurchaseModification")
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
    async findAllFacturation(store){
        store.commit('facturations', await DB_Facturation.findAllFacturation())
    },
    async fidFacturationfromCompanyId(store,id){
        if(id == ''){
            this.dispatch('findAllFacturation');
            return
        }
        let fidFacturationfromCompanyId = await DB_Facturation.fidFacturationfromCompanyId(id)
        let facturationsIds = []
        for (let index = 0; index < fidFacturationfromCompanyId.length; index++) {
            const element = fidFacturationfromCompanyId[index];
            if(facturationsIds.indexOf(element.facturationId) < 0){
                facturationsIds.push(element.facturationId)
            }
        }
        store.commit('facturations', await DB_Facturation.fidFacturationData(facturationsIds))
    },
    async fidFacturationfromFacturationId(store,id){
        if(id == ''){
            this.dispatch('findAllFacturation');
            return
        }
        let fidFacturationFacturationId = await DB_Facturation.fidFacturationId(id)
        let facturationsIds = []
        for (let index = 0; index < fidFacturationFacturationId.length; index++) {
            const element = fidFacturationFacturationId[index];
            if(facturationsIds.indexOf(element.facturationId) < 0){
                facturationsIds.push(element.facturationId)
            }
        }
        store.commit('facturations', await DB_Facturation.fidFacturationData(facturationsIds))
    },
    async findFacturation(store, text) {
        try {
            store.commit("charging")
            if (text != '' && text) {
                store.commit('facturations', await DB_Facturation.findArticles(text))
            } else if (text == "") {
                store.commit('facturations', [])
            } else if (!text) {
                store.commit('facturations', await DB_Facturation.findAllArticles())
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
    async inserFacturation(store, companyId = 1) {
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

        return await DB_Facturation.insertFacturation({
                facturation: {
                    company_id: companyId,
                    price: store.state.priceStoreCard,
                    credit_card: store.state.creditCard
                },
                extra: cartToinsert
            })
            .then(async resp => {
                for (let index = 0; index < cartToinsert.length; index++) {
                    const element = cartToinsert[index];
                    DB_Articles.updateArticleUnits(element.articleId, -1 * parseInt(element.units))
                }
                store.commit("clearnStoreCard")
                let idFacturation = resp[0]
                printThermalPrinterFacturation(idFacturation)               
                printFacturationFromFacturation(idFacturation)
                createAlert(store, 'Nueva factura creada')
                store.commit('charged')
            })
            .catch(error => {
                console.error(error.message)
                createAlert(store, 'error al insertar En facturación')
                store.commit('charged')
            })
    },
    async printFacturation(store,id) {
        printFacturationFromFacturation(id)
    },
    async inserSale(store) {
        store.commit("charging")
        let cartToinsert = []
        store.state.storeCard.forEach(element => {
            cartToinsert.push({
                articleid: element.idarticles,
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
                for (let index = 0; index < cartToinsert.length; index++) {
                    const element = cartToinsert[index];
                    DB_Articles.updateArticleUnits(element.articleid, -1 * parseInt(element.units))
                }
                
                store.commit("clearnStoreCard")
                let idSales = resp[0]
                printThermalPrinterSales(idSales)
                createAlert(store, 'Nueva venta Realizada')
            })
            .catch(error => {
                console.error(error.message)
                createAlert(store, 'error al insertar En Sales')
            })
        store.commit('charged')
        return newId
    },
    selectBill(store, id){
        DB_Facturation.fidFacturationId(id).then(fidFacturationArticles => {
            let purchaseToModifyList = []
            for (let index = 0; index < fidFacturationArticles.length; index++) {
                const element = fidFacturationArticles[index];
                purchaseToModifyList.push({
                    description: element.description,
                    idarticles: element.articleId,
                    media:0,
                    old:true,
                    numberOfArticles: element.units,
                    productid: element.id,
                    public_price: element.price
                })
            }
            store.commit('ActualFacturationId',id)
            store.commit('purchaseToModify',purchaseToModifyList)
            store.commit("recalculatePricePurchaseModification")
            store.commit('FacturationListVisibility',false)
            store.commit('FacturationPreviewVisibility',true)
        })
           
    },
    async restartBillFinded(store){
        await store.commit('ActualFacturationId',0)
        store.commit('purchaseToModify',[])
        await store.commit('FacturationListVisibility',true)
        await store.commit('FacturationPreviewVisibility',false)
    },
    clearnPriceStoreCard(store){
        store.commit("clearnPriceStoreCard") 
    },
    updateBill(store){
        let newArticles = []
        let updateArticles = []
        let deleteArticlesIds = []
        store.commit("charging")
        DB_Facturation.fidFacturationId(store.state.ActualFacturationId).then(fidFacturationArticles => {
            store.commit('UpdateButton',false)
            for (let index = 0; index < store.state.purchaseToModify.length; index++) {
                const element = store.state.purchaseToModify[index];
                if(!store.state.purchaseToModify[index].old){
                    newArticles.push(store.state.purchaseToModify[index])
                }else{
                    updateArticles.push({
                        description: element.description,
                        idarticles: element.idarticles,
                        media: element.media,
                        numberOfArticles: element.numberOfArticles,
                        productid: element.productid,
                        public_price: element.public_price
                    })
                }
            }
            for (let index = 0; index < fidFacturationArticles.length; index++) {
                const element = fidFacturationArticles[index]
                if(!store.state.purchaseToModify.find( producto => producto.productid === element.id )){
                    deleteArticlesIds.push(element.id)
                }
            }
            DB_Facturation.updateFacturationAndArticles(
                store.state.ActualFacturationId,
                store.state.pricePurchaseToModify,
                newArticles,
                deleteArticlesIds,
                updateArticles
            )
            .then(res => {
                store.commit('alert', `Factura ${store.state.ActualFacturationId} Actualizada`)
                store.commit('alert', '');
                this.dispatch('restartBillFinded');
                store.commit('UpdateButton',true)
                store.commit("charged")
            }).catch(error =>{
                store.commit('alert', `error al actualizar la factura ${store.state.ActualFacturationId}`)
                store.commit('alert', '');
                this.dispatch('restartBillFinded');
                store.commit('UpdateButton',true)
                store.commit("charged")
            })
           
        })
      
    }
}
module.exports = actions