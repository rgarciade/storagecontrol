const {createPrintWindow,createTicket} = require('simple-electron-printer-and-thermalprinter');
const { DB_Sales } = require('../../DB/sales')
const { DB_Configuration } = require('../../DB/configuration')
const { DB_Facturation } = require('../../DB/facturation')
const moment = require('moment')
var childProcess = require('child_process');

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
    printTicket( id, 'thermalfacturation')
}
const printThermalPrinterSales = async ( id, delivered = null) => {
    printTicket(id, 'sales')
}
const printTicket = async ( id, type ) => {
	childProcess.exec(`electron ${__dirname}\\printer-and-thermalprinter\\index.js -type `+type+' -id '+ id);
}

module.exports = { printThermalPrinterSales, printThermalPrinterFacturation, createArticlesToTicket, createTicket }
