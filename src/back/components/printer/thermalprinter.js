const {createPrintWindow,createTicket} = require('simple-electron-printer-and-thermalprinter');
const { DB_Sales } = require('../../DB/sales')
const { DB_Configuration } = require('../../DB/configuration')
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

const printThermalPrinterFacturation = async ( id, delivered = null ) => {
    let facturation =  await DB_Facturation.findFacturationId(id)
    let articles = await createArticlesToTicket(facturation)
    printTicket( id, articles, delivered )
}
const printThermalPrinterSales = async ( id, delivered = null) => {
    let sales =  await DB_Sales.fidSalesId(id)
    let articles = await createArticlesToTicket(sales)
    printTicket(id, articles, delivered)
}
const printTicket = async ( id, articles, delivered = null, time = null ) => {
	time = (!time)? moment.utc().format('YYYY-MM-DD HH:mm:ss') : time
	const config =  await DB_Configuration.findConfigurationById(1)
	const vat = (config[0] && config[0].vat)? config[0].vat : 21
    createPrintWindow({
        html: createTicket(
            {
                'initial': [
                    `id de venta:${id}`,
                    '',
                    'MICRO-TEX INFORMATICA',
                    'Avenida de atenas 2, local 22 23',
                    'C.C. LAS ROZAS (MADRID) 28231 ',
                    'CIF :B80898224',
                    time,
                    ''
                ],
                'articles': articles,
                'final': ['Gracias por su visita'],
                'iva': vat,
                'delivered':delivered
            }
        ),
        config: ['thermalprinter']
     })
}

module.exports = { printThermalPrinterSales, printThermalPrinterFacturation, createArticlesToTicket, createTicket }
