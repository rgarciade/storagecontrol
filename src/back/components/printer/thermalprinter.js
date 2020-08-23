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
	let vat = (facturation[0] && facturation[0].vat)?  facturation[0].vat : 21
    printTicket( id, articles, delivered, null, vat)
}
const printThermalPrinterSales = async ( id, delivered = null) => {
    let sales =  await DB_Sales.fidSalesId(id)
	let articles = await createArticlesToTicket(sales)
	let vat = (sales[0] && sales[0].vat)?  sales[0].vat : 21
    printTicket(id, articles, delivered, null, vat)
}
const printTicket = async ( id, articles, delivered = null, time = null, vat = null ) => {
	time = (!time)? moment.utc().format('DD-M-YY HH:mm:ss') : time
	const config =  await DB_Configuration.findConfigurationById(1)
	vat = (vat)? vat : (config[0] && config[0].vat)? config[0].vat : 21
    createPrintWindow({
        html: createTicket(
            {
                'initial': [
                    `Nº. VENTA:${id}`,
                    '',
                    'MICRO-TEX INFORMATICA',
                    'AVDA. DE ATENAS, 1 LOCALES 22-23',
                    'C.C. LAS ROZAS (MADRID) 28231 ',
                    'CIF :B80898224',
                    time
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
