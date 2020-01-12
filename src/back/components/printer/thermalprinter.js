const {createPrintWindow,createTicket} = require('simple-electron-printer-and-thermalprinter');
const { DB_Sales } = require('../../DB/sales')
const { DB_Facturation } = require('../../DB/facturation')
const moment = require('moment')

const createArticlesToTicket = ( articles ) => {
    let articlesFormat = []
    for (let index = 0; index < articles.length; index++) {
        const element = articles[index];
        articlesFormat.push({
            'quantity': element.units,
            'product': element.description,
            'price': element.price
        })
    }
    return articlesFormat
}

const printThermalPrinterFacturation = async ( id ) => {
    let facturation =  await DB_Facturation.fidFacturationId(id) 
    let articles = await createArticlesToTicket(facturation)
    printTicket( id, articles )
}
const printThermalPrinterSales = async ( id ) => {
    let sales =  await DB_Sales.fidSalesId(id) 
    let articles = await createArticlesToTicket(sales)
    printTicket(articles)
}
const printTicket = async ( id, articles, time = null ) => {
    time = (!time)? moment.utc().format('YYYY-MM-DD HH:mm:ss') : time
    createPrintWindow({

        html: createTicket(
            {
                'initial': [
                    'MICRO-TEX INFORMATICA', 'C.C. LAS ROZAS (MADRID) 28231 ','CIF :B80898224', time
                ]
                ,
                'articles': articles,
                'final': [`id de venta:${id}`,'Gracias por su visita'],
            }
        ),
        config: ['thermalprinter']
        })
}

module.exports = { printThermalPrinterSales, printThermalPrinterFacturation, createArticlesToTicket, createTicket }
