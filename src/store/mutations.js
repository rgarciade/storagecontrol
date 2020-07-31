const { basePrice,addIvaToPrice,currencyFormat } = require('../common/commonfunctions')
const moment = require('moment');
const { DB_MoneyBoxs } = require('../back/DB/moneybox');
const { DB_Configuration } = require('../back/DB/configuration')

moment.locale('es');
const mutations = {
    clearnStoreCard(state) {
        state.storeCard = []
        state.priceStoreCard = 0
        state.paymentType = 1
        state.creditCard = 0
    },
    clearnPriceStoreCard(state) {
        state.purchaseToModify = []
        state.pricePurchaseToModify = 0
        state.paymentType = 1
    },
    paymentType(state, type) {
        state.paymentType = type
    },
    changeArticleDescription(state, args) {
        let article = args.article
        for (let index = 0; index < state.storeCard.length; index++) {
            if (state.storeCard[index].idarticles == article.idarticles) {
                state.storeCard[index].description = article.description
            }
        }
    },
    changePurchaseModificationArticleDescription(state, args) {
        let article = args.article
        for (let index = 0; index < state.purchaseToModify.length; index++) {
            if (state.purchaseToModify[index].idarticles == article.idarticles) {
                state.purchaseToModify[index].description = article.description
            }
        }
    },
    changeArticlePrice(state, args) {
        let article = args.article
        for (let index = 0; index < state.storeCard.length; index++) {

            if (state.storeCard[index].idarticles == article.idarticles) {
                state.storeCard[index].public_price = article.public_price
            }
        }
    },
    changePurchaseModificationArticlePrice(state, args) {
        let article = args.article
        for (let index = 0; index < state.purchaseToModify.length; index++) {

            if (state.purchaseToModify[index].idarticles == article.idarticles) {
                state.purchaseToModify[index].public_price = article.public_price
            }
        }
    },
    changeArticleUnitsNumber(state, args) {
        let article = args.article
        for (let index = 0; index < state.storeCard.length; index++) {
            if (state.storeCard[index].idarticles == article.idarticles) {
                state.storeCard[index].numberOfArticles = article.numberOfArticles
            }
        }
    },
    changePurchaseModificationArticleUnitsNumber(state, args) {
        let article = args.article
        for (let index = 0; index < state.purchaseToModify.length; index++) {
            if (state.purchaseToModify[index].idarticles == article.idarticles) {
                state.purchaseToModify[index].numberOfArticles = article.numberOfArticles
            }
        }
    },
    reFillArticles(state) {
        state.storeCard = state.storeCardTemp
    },
    clearArticles(state) {
        state.storeCardTemp = state.storeCard;
        state.storeCard = []
    },
    addEmptyArticleToStoreCard(state, article) {
        article.idarticles = state.tempItemNumber
        state.tempItemNumber--
            state.storeCard.push(article)
    },
    addEmptyArticleToPurchaseModification(state, article) {
        article.idarticles = state.tempItemNumber
        state.tempItemNumber--
            state.purchaseToModify.push(article)
    },
    addStoreCard(state, article) {
        let prev = state.storeCard.filter(d => d.idarticles == article[0].idarticles)

        if (prev.length == 0) {
            article[0].numberOfArticles = 1
            state.storeCard.push(article[0])
        } else {
            for (let index = 0; index < state.storeCard.length; index++) {
                const element = state.storeCard[index];
                if (element.idarticles == article[0].idarticles) {
                    state.storeCard[index].numberOfArticles++
                        if ((state.storeCard[index].numberOfArticles > state.storeCard[index].units) && state.storeCard[index].idarticles > 0) {
                            state.alert = ''
                            state.alert = `Error, solo tenemos ${ state.storeCard[index].units } unidades de ${state.storeCard[index].description} en stock`
                        }
                }
            }
        }
    },
    addPurchaseModification(state, article){
        let prev = state.purchaseToModify.filter(d => d.idarticles == article[0].idarticles)

        if (prev.length == 0) {
            article[0].numberOfArticles = 1
            state.purchaseToModify.push(article[0])
        } else {
            for (let index = 0; index < state.purchaseToModify.length; index++) {
                const element = state.purchaseToModify[index];
                if (element.idarticles == article[0].idarticles) {
                    state.purchaseToModify[index].numberOfArticles++
                        if ((state.purchaseToModify[index].numberOfArticles > state.purchaseToModify[index].units) && state.purchaseToModify[index].idarticles > 0) {
                            state.alert = ''
                            state.alert = `Error, solo tenemos ${ state.purchaseToModify[index].units } unidades de ${state.purchaseToModify[index].description} en stock`
                        }
                }
            }
        }
    },
    async subtractToCard(state, args) {
        let article = args.article
        let remove = args.remove
        let prev = state.storeCard.filter(d => d.idarticles == article[0].idarticles)

        if (remove) {
            for (let index = 0; index < state.storeCard.length; index++) {
                const element = state.storeCard[index];
                if (element.idarticles == article[0].idarticles) {
                    state.storeCard.splice(index, 1)
                }
            }
        } else {
            for (let index = 0; index < state.storeCard.length; index++) {
                const element = state.storeCard[index];
                if (element.idarticles == article[0].idarticles) {
                    state.storeCard[index].numberOfArticles--
                        if ((state.storeCard[index].numberOfArticles > state.storeCard[index].units) && state.storeCard[index].idarticles > 0) {
                            state.alert = ''
                            state.alert = `Error, solo tenemos ${ state.storeCard[index].units } unidades de ${state.storeCard[index].description} en stock`
                        }
                }
            }

        }
    },
    async subtractToPurchaseModification(state, args) {
        let article = args.article
        let remove = args.remove
        let prev = state.purchaseToModify.filter(d => d.idarticles == article[0].idarticles)

        if (prev[0].numberOfArticles <= 1 || remove) {
            for (let index = 0; index < state.purchaseToModify.length; index++) {
                const element = state.purchaseToModify[index];
                if (element.idarticles == article[0].idarticles) {
                    state.purchaseToModify.splice(index, 1)
                }
            }
        } else {
            for (let index = 0; index < state.purchaseToModify.length; index++) {
                const element = state.purchaseToModify[index];
                if (element.idarticles == article[0].idarticles) {
                    state.purchaseToModify[index].numberOfArticles--
                        if ((state.purchaseToModify[index].numberOfArticles > state.purchaseToModify[index].units) && state.purchaseToModify[index].idarticles > 0) {
                            state.alert = ''
                            state.alert = `Error, solo tenemos ${ state.purchaseToModify[index].units } unidades de ${state.purchaseToModify[index].description} en stock`
                        }
                }
            }

        }
    },
    recalculatePrice(state) {
        let priceStoreCard = 0
        for (let index = 0; index < state.storeCard.length; index++) {
            const element = state.storeCard[index];
            priceStoreCard += element.public_price * element.numberOfArticles
        }
        state.priceStoreCard = priceStoreCard
    },
    recalculatePricePurchaseModification(state) {
        let pricePurchaseToModify = 0
        if(!state.purchaseToModify || !state.purchaseToModify.length) return
        for (let index = 0; index < state.purchaseToModify.length; index++) {
            const element = state.purchaseToModify[index];
            pricePurchaseToModify += element.public_price * element.numberOfArticles
        }
        state.pricePurchaseToModify = pricePurchaseToModify
    },
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

    },
    async articles(state, finded) {
		let temporalState = []
        finded.forEach(function(element) {
            element.price_without_vat = addIvaToPrice(element.purchase_price, state.config.vat)
            element.public_price_without_vat = basePrice(element.public_price, state.config.vat)
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
    },
    creditCard(state, data) {
        state.creditCard = data
    },
    facturations(state, data) {
        let temporalFacturationState = []

        data.forEach(function(element) {
            element.facturationId = element.id
            element.date = moment(element.creation_date).format('LLLL');
            element.price = currencyFormat(element.price)
            temporalFacturationState.push(element)
        });
        state.facturations = temporalFacturationState
    },
    sales(state, data) {
        let temporalTicketsState = []
        data.forEach(function(element) {
            element.ticketId = element.id
            element.date = moment(element.creation_date).format('LLLL');
            element.price = currencyFormat(element.price)
            temporalTicketsState.push(element)
        });
        state.tickets = temporalTicketsState
    },
    ActualFacturationId(state,id){
        state.ActualFacturationId = id
    },
    FacturationListVisibility(state, visibiliti){
        state.FacturationListVisibility = visibiliti
    },
    ticketsListVisibility(state, visibiliti){
        state.ticketsListVisibility = visibiliti
    },
    TicketPreviewVisibility(state, visibiliti){
        state.TicketPreviewVisibility  =visibiliti
    },
    FacturationPreviewVisibility(state, visibiliti){
        state.FacturationPreviewVisibility  =visibiliti
    },
    purchaseToModify(state, list){
        state.purchaseToModify  =list
    },
    updateIncomingMoney(state, value){
        state.incomingMoney = value
    },
    setprintType(state, value){
        state.printType = value
	},
	lastReports(state, value){
		state.moneyBox.lastReports = []
		value.forEach(element => {
			element.date =  moment(element.creation_date).format('LLLL');
			state.moneyBox.lastReports.push(element)
		});
		if(value.length <= 0) return false

		if(state.moneyBox.lastReports[0].open_box){
			state.moneyBox.closeReport = 1
			state.moneyBox.openReport = 0
		}
		if( state.moneyBox.lastReports[0].close_box){
			state.moneyBox.openReport = 1
			state.moneyBox.closeReport = 0
		}
	},
	actualMoneyInBox(state, value){
		state.moneyBox.actualMoneyInBox = value
	},
	actualMoneyCard(state, value){
		state.moneyBox.actualMoneyCard = value
	},
	/**
	 *
	 * @param {*} state
	 * @param {*} data {dayToReport,moneyInBox}
	 */
	async addNewDataToMoneyBox(state, data){
			await DB_MoneyBoxs.addNewMoneyEvent({
				money: data.moneyInBox - data.removeToBox,
				remove_to_box: data.removeToBox
			})
			state.moneyBox.newMoneyInSaleBox = 0
			state.moneyBox.newRemoveToBox = 0
			state.moneyBox.checkUpdate = 0
			this.dispatch('findAllLastBoxReports')
			this.dispatch('generateAlert',`caja actualizada`)
	},
	errorInUpdateSaleBox(state,data){
		state.moneyBox.newMoneyInSaleBox = data.newMoneyInSaleBox
		state.moneyBox.newRemoveToBox = data.newRemoveToBox
		state.moneyBox.checkUpdate = 1
	},
	resetpdateSaleBox(state){
		state.moneyBox.newMoneyInSaleBox = 0
		state.moneyBox.newRemoveToBox = 0
		state.moneyBox.checkUpdate = 0
	},
	async uploadConfigDatas(state, data){
		for (let index = 0; index < data.length; index++) {
			const element = data[index];
			const config =  await DB_Configuration.findConfigurationById(1)
			if(config[0] && config[0][element]){
				state.config[element] = config[0][element]
			}
		}


	}
}
module.exports = mutations
