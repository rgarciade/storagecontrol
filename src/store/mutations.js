const { basePrice } = require('../common/commonfunctions')
const mutations = {
    clearnStoreCard(state) {
        state.storeCard = []
        state.priceStoreCard = 0
        state.paymentType = 1
    },
    paymentType(state, type) {
        state.paymentType = type
    },
    changeArticleDescription(state, args) {
        let article = args.article
        console.error('arrtii->', article)
        for (let index = 0; index < state.storeCard.length; index++) {
            if (state.storeCard[index].idarticles == article.idarticles) {
                state.storeCard[index].description = article.description
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
        this.commit('recalculatePrice')
    },
    changeArticleUnitsNumber(state, args) {
        let article = args.article
        for (let index = 0; index < state.storeCard.length; index++) {
            if (state.storeCard[index].idarticles == article.idarticles) {
                state.storeCard[index].numberOfArticles = article.numberOfArticles
            }
        }
        this.commit('recalculatePrice')
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
                        if (state.storeCard[index].numberOfArticles > state.storeCard[index].units) {
                            this.commit('alert', '')
                            this.commit('alert', `Error, solo tenemos ${ state.storeCard[index].units } unidades de ${state.storeCard[index].description} en stock`)
                            this.commit('recalculatePrice')
                        }
                }
            }
        }
        this.commit('recalculatePrice')
    },
    async subtractToCard(state, args) {
        let article = args.article
        let remove = args.remove
        let prev = state.storeCard.filter(d => d.idarticles == article[0].idarticles)

        if (prev[0].numberOfArticles == 1 || remove) {
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
                        if (state.storeCard[index].numberOfArticles > state.storeCard[index].units) {
                            this.commit('alert', '')
                            this.commit('alert', `Error, solo tenemos ${ state.storeCard[index].units } unidades de ${state.storeCard[index].description} en stock`)
                            this.commit('recalculatePrice')
                        }
                }
            }

        }
        this.commit('recalculatePrice')
    },
    recalculatePrice(state) {
        let priceStoreCard = 0
        for (let index = 0; index < state.storeCard.length; index++) {
            const element = state.storeCard[index];
            priceStoreCard += element.public_price * element.numberOfArticles
        }
        state.priceStoreCard = priceStoreCard
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
    articles(state, finded) {
        let temporalState = []
        finded.forEach(function(element) {
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
}
module.exports = mutations