const { app } = require('electron')
const { DB_Companys } = require('../back/DB/companys')
const { DB_Articles } = require('../back/DB/articles')
const { DB_Facturation } = require('../back/DB/facturation')
const { DB_Sales } = require('../back/DB/sales')
const { DB_MoneyBoxs } = require('../back/DB/moneybox')
const { DB_Configuration } = require('../back/DB/configuration')
const { printThermalPrinterSales, printThermalPrinterFacturation } = require('../back/components/printer/thermalprinter')
const { printFacturationFromFacturation } = require('../back/components/facturation/')
const {sendEmail} = require('../back/components/email/email')
//const notifier = require('node-notifier');
const { default: store } = require('.')


const createAlert = (store, text) => {
    store.commit('alert', '')
    store.commit('alert', text)
}
const actions = {
	generateAlert(store, text){
		createAlert(store,text)
	},
    selectPaymentType(store, type) {
		if(type > 1){
			store.commit('creditCard', 0)
			store.commit('paymentType', type)
		}else{
			store.commit('creditCard', type)
		}
    },
    needFacturation(store, type) {
		//paymentType
		//3 Transferencia
		//2 Recibo
        //1 facturation
		//0 normal
		if(store.state.paymentType == 0){
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
    async findArticles(store, args) {
		const text = (args.textFinder)? args.textFinder : ""
		const findAll = (args.findAll)? args.findAll : false
        try {
            store.commit("charging")
            if (text != '' && text) {
                store.commit('articles', await DB_Articles.findArticles(text))
            } else if ( (findAll && (text == "")) || text == null) {
				store.commit('articles', await DB_Articles.findAllArticles())
			}else if (text == "") {
                store.commit('articles', [])
            }
            store.commit('charged')
        } catch (error) {
            console.error(error)
        }

    },
    async findAllFacturation(store){
        store.commit('facturations', await DB_Facturation.findAllFacturation())
    },
    async findAllTickets(store){
        store.commit('sales', await DB_Sales.findAllSales())
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
    /**
     *
     * @param {*} store
     * @param {numberFinder, initialDate, finalDate} data
     */
    async fidFacturationfromCompanyIdAndDates(store, data){

        if(data.id == ''){
            this.dispatch('findAllFacturation');
            return
        }
        let fidFacturation= await DB_Facturation.fidFacturationfromCompanyIdAndDates(data.numberFinder, data.initialDate, data.finalDate)
        let facturationsIds = []
        for (let index = 0; index < fidFacturation.length; index++) {
            const element = fidFacturation[index];
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
        let fidFacturationFacturationId = await DB_Facturation.findFacturationId(id)
        let facturationsIds = []
        for (let index = 0; index < fidFacturationFacturationId.length; index++) {
            const element = fidFacturationFacturationId[index];
            if(facturationsIds.indexOf(element.facturationId) < 0){
                facturationsIds.push(element.facturationId)
            }
        }
        store.commit('facturations', await DB_Facturation.fidFacturationData(facturationsIds))
    },
    /**
     *
     * @param {*} store
     * @param {id, initialDate, finalDate} data
     */
    async fidFacturationfromFacturationIdAndDates(store, data){
        if(data.id == ''){
            this.dispatch('findAllFacturation');
            return
        }
        let fidFacturations = await DB_Facturation.findFacturationIdAndDates(data.numberFinder, data.initialDate, data.finalDate)
        let facturationsIds = []
        for (let index = 0; index < fidFacturations.length; index++) {
            const element = fidFacturations[index];
            if(facturationsIds.indexOf(element.facturationId) < 0){
                facturationsIds.push(element.facturationId)
            }
        }
        store.commit('facturations', await DB_Facturation.fidFacturationData(facturationsIds))
    },
    /**
     *
     * @param {*} store
     * @param {id, initialDate, finalDate} data
     */
    async fidFacturationfromDates(store, data){
        let fidFacturations = await DB_Facturation.findFacturationDates( data.initialDate, data.finalDate)
        let facturationsIds = []
        for (let index = 0; index < fidFacturations.length; index++) {
            const element = fidFacturations[index];
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
    /**
     *
     * @param {*} store
     * @param {id, initialDate, finalDate} data
     */
    async findTicketfromFacturationIdAndDates(store, data){
        let fidSales = null
        if(!data.numberFinder){
            fidSales = await DB_Sales.fidSalesDates(data.initialDate, data.finalDate)
        }else{
            fidSales = await DB_Sales.fidSalesIdAndDates(data.numberFinder, data.initialDate, data.finalDate)
        }
        let salesIds = []
        for (let index = 0; index < fidSales.length; index++) {
            const element = fidSales[index];
            if(salesIds.indexOf(element.saleId) < 0){
                salesIds.push(element.saleId)
            }
        }
        store.commit('sales', await DB_Sales.fidSalesIdsDatas(salesIds))
    },
    async addNewArticle(store, data) {
		store.commit("charging")
		let article = await DB_Articles.findIdArticles(data.productid)
		if(article.length > 0){
			createAlert(store, 'ya existe un articulo con este id de producto')
			return false
		}
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
        store.commit('articles', await DB_Articles.findAllArticles())
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
    async resetCompanyData(store) {
		store.commit('clearncompanyDataContacts')
		store.commit('clearnCompanyData')
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
					credit_card: store.state.creditCard,
					paymentType : store.state.paymentType,
					paid: store.state.incomingMoney
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
                if( store.state.printType == 'factura' || store.state.printType == 'ambas'){
                    printFacturationFromFacturation(idFacturation)
				}
				if( store.state.printType == 'factura por correo'){
					printFacturationFromFacturation(idFacturation,true, async function () {
						createAlert(store, 'pdf de factura creado')
						let companyData = await DB_Companys.findCompanyWithData(companyId)
						if(companyData[0]){
							let email = JSON.parse(JSON.stringify(companyData[0])).email
							const isDevMode = process.execPath.match(/[\\/]electron/);
							if(isDevMode) email = 'raulgarcia_dlf@hotmail.com'
							sendEmail(email,`factura ${idFacturation}`,'se adjunta la factura', [`${app.getPath('documents')+'/printer'}/${idFacturation}.pdf`])
								.then(a => createAlert(store, `Factura enviada por correo a ${email} `))
								.catch(e => createAlert(store, `Error al enviar el correo ${e}`))
							/*notifier.notify({
								'title': 'storage control Factura',
								'message': `Factura enviada por correo a ${email} `
							  })*/
						}else{
							createAlert(store, `la compañia no tiene email asignado`)
						}

					})
					//TODO::enviar email
                }
                if(store.state.printType == 'ticket' || store.state.printType == 'ambas'  || (  store.state.printType == 'nada' && store.state.creditCard )){
                    printThermalPrinterFacturation(idFacturation, store.state.incomingMoney)
                }
                store.commit('setprintType','nada')
                store.commit('updateIncomingMoney',0)
                store.commit('charged')
                createAlert(store, 'Nueva factura creada')

            })
            .catch(error => {
                console.error(error.message)
                store.commit('setprintType','nada')
                store.commit('updateIncomingMoney',0)
                createAlert(store, 'error al insertar En facturación')
                store.commit('charged')
            })
    },
    async printFacturation(store,data) {
		await printFacturationFromFacturation(data.id, data.pdf)
		createAlert(store, 'creando pdf en documentos/printer Espere para crear otro')
    },
    async printTiket(store,id) {
        printThermalPrinterSales(id)
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

        await DB_Sales.insertSales({
                sale: {
					price: store.state.priceStoreCard,
					paid: store.state.incomingMoney
				},
                extra: cartToinsert
            })
            .then(resp => {
                for (let index = 0; index < cartToinsert.length; index++) {
                    const element = cartToinsert[index];
                    DB_Articles.updateArticleUnits(element.articleid, -1 * parseInt(element.units))
                }

                store.commit("clearnStoreCard")
                let idSales = resp[0]
                printThermalPrinterSales(idSales, store.state.incomingMoney)
                store.commit('updateIncomingMoney',0)
                createAlert(store, 'Nueva venta Realizada')
            })
            .catch(error => {
                console.error(error.message)
                createAlert(store, 'error al insertar En Sales')
            })
        store.commit('charged')
    },
    selectBill(store, id){
        DB_Facturation.findFacturationId(id).then(fidFacturationArticles => {
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
    selectTicket(store, id){
        DB_Sales.fidSalesId(id).then(fidSalesArticles => {
            let purchaseToModifyList = []
            for (let index = 0; index < fidSalesArticles.length; index++) {
                const element = fidSalesArticles[index];
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
            store.commit('ActualTicketId',id)
            store.commit('purchaseToModify',purchaseToModifyList)
            store.commit("recalculatePricePurchaseModification")
            store.commit('ticketsListVisibility',false)
            store.commit('TicketPreviewVisibility',true)
        })

    },
    async restartBillFinded(store){
        await store.commit('ActualFacturationId',0)
        store.commit('purchaseToModify',[])
        await store.commit('FacturationListVisibility',true)
        await store.commit('FacturationPreviewVisibility',false)
    },
    async restartTicketFinded(store){
        store.commit('purchaseToModify',[])
        await store.commit('ticketsListVisibility',true)
        await store.commit('TicketPreviewVisibility',false)
    },
    clearnPriceStoreCard(store){
        store.commit("clearnPriceStoreCard")
    },
    updateBill(store){
        let newArticles = []
        let updateArticles = []
        let deleteArticlesIds = []
        let purchaseToModify = store.state.purchaseToModify
        let actualFacturationId = store.state.ActualFacturationId
        store.commit("charging")
        DB_Facturation.findFacturationId(store.state.ActualFacturationId).then(fidFacturationArticles => {
            store.commit('UpdateButton',false)
            for (let index = 0; index < purchaseToModify.length; index++) {
                const element = purchaseToModify[index];
                if(!purchaseToModify[index].old){
                    newArticles.push(purchaseToModify[index])
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
                if(!purchaseToModify.find( producto => producto.productid === element.id )){
                    deleteArticlesIds.push(element.id)
                }
            }
            DB_Facturation.updateFacturationAndArticles(
                actualFacturationId,
                purchaseToModify,
                newArticles,
                deleteArticlesIds,
                updateArticles
            )
            .then(res => {
                store.commit('alert', `Factura ${actualFacturationId} Actualizada`)
                store.commit('alert', '');
                this.dispatch('restartBillFinded');
                store.commit('UpdateButton',true)
                store.commit("charged")
            }).catch(error =>{
                store.commit('alert', `error al actualizar la factura ${actualFacturationId}`)
                store.commit('alert', '');
                this.dispatch('restartBillFinded');
                store.commit('UpdateButton',true)
                store.commit("charged")
            })

        })

    },
    updateIncomingMoney(store, value){
        store.commit("updateIncomingMoney",value)
    },
    setprintType(store, value){
        store.commit("setprintType",value)
	},
	async findAllLastBoxReports(store){
		let reports = await DB_MoneyBoxs.findAllLast()
	store.commit('lastReports', reports)
		let lastBoxActionMoney = 0
		let actualMoneyCard = 0
		if(reports.length > 0) lastBoxActionMoney = reports[0].money
		let daySales = await DB_Sales.fidDaySales()
		if(daySales.length > 0) lastBoxActionMoney += daySales[0].daybox
		let dayFacturations = await DB_Facturation.findAllCreditCardSales()
		if(dayFacturations.length > 0){
			dayFacturations.forEach(element => {
				if(element.credit_card == 1){
					actualMoneyCard = element.daybox
				}
				if(element.credit_card == 0){
					lastBoxActionMoney += element.daybox
				}
			});
		}
		store.commit('actualMoneyInBox', lastBoxActionMoney)
		store.commit('actualMoneyCard', actualMoneyCard)
	},
	async checkAddNewDataToMoneyBox(store,data){
		if((parseFloat(data.moneyInBox) == data.moneyInBox) && parseFloat(data.removeToBox) == data.removeToBox){
			let lastRow = await DB_MoneyBoxs.findAllLast(1)
			if(lastRow.length == 0){
				store.commit('addNewDataToMoneyBox',data)
			}else if(parseFloat(data.moneyInBox) == parseFloat(store.state.moneyBox.actualMoneyInBox)){
				store.commit('addNewDataToMoneyBox',data)
			}else if(parseFloat(data.moneyInBox) != parseFloat(store.state.moneyBox.actualMoneyInBox)){
				store.commit('errorInUpdateSaleBox',{
					newMoneyInSaleBox:data.moneyInBox,
					newRemoveToBox:data.removeToBox
				})
			}
		}else{
			createAlert(store, "Debes introducir un numero")
		}
	},
	/**
	 *
	 * @param {*} store
	 * @param {*} data {dayToReport,moneyInBox}
	 */
	addNewDataToMoneyBox(store,data){
		store.commit('resetpdateSaleBox')
		if((parseFloat(data.moneyInBox) == data.moneyInBox) && parseFloat(data.removeToBox) == data.removeToBox){
			store.commit('addNewDataToMoneyBox',data)
		}else{
			createAlert(store, "Debes introducir un numero")
		}
	},
	resetpdateSaleBox(store){
		store.commit('resetpdateSaleBox')
	},
	/**
	 *
	 * @param {*} store
	 * @param {*} data array strings
	 */
	uploadConfigDatas(store, data){
		store.commit('uploadConfigDatas',data)
	},
	async getConfigData(store){
		const configData =  await DB_Configuration.findPrincipalConfiguration()
		if(configData[0].length <= 0) return false
		store.commit('updateConfigData',configData)
	},
	async updateConfiguration(store,data){
		store.commit("charging")
		await DB_Configuration.updatePrincipalConfiguration(data)
		this.dispatch('getConfigData');
		store.commit("charged")
		createAlert(store, `Configuración actualizada correctamente`)
	},
	async testMail(store,email){
		await sendEmail(email,'Email de prueba','Este es un email de prueba')
			.then(a => createAlert(store, `revise su correo`))
			.catch(e => createAlert(store, `Error al enviar el correo ${e}`))
	}
}
module.exports = actions
