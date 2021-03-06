const { BrowserWindow, ipcMain, app} = require('electron')
const { isInConfig } = require('./common')
const moment = require('moment')
const fs = require('fs')
const { DB_Configuration } = require('../../../DB/configuration')
const { DB_Sales } = require('../../../DB/sales')
const { DB_Companys } = require('../../../DB/companys')
const { DB_Facturation } = require('../../../DB/facturation')
const { createArticlesToTicket } = require('../thermalprinter')
const { createHtml } = require('../../../../back/components/facturation')
const { ES } = require('../../../../i18n/paiments')


const dirSave = 'printer'
let finishFunction = false
const isDevMode = 0//process.execPath.match(/[\\/]electron/);

async function createWindow () {
	let type = null
	let id = null
	process.argv.forEach(function (val, index, array) {
		console.error(array[index+1])
		if(val.includes('-type')){
			type = array[index+1]
		}
		if(val.includes('-id')){
			id = array[index+1]
		}
		if(val.includes('-pdf')){
			pdf = array[index+1]
		}
	});
	if(!type || !id) app.quit()

	const config =  await DB_Configuration.findConfigurationById(1)
	let data = null
	if(type == 'facturation'){
		let facturation = await DB_Facturation.findFacturationId(id)
		let companyId = facturation[0].company_id
		let companyData = await DB_Companys.findCompany(companyId)
		let articles = await createArticlesToTicket(facturation)
		let date =  moment(facturation[0].creation_date).format('L')
		let vat = (facturation[0].vat)?facturation[0].vat:21
		let paymentType = ES[facturation[0].paymentType]
		console.error('id--',id,'fff--', companyData[0].id)
		printFacturation(articles, id, date, companyData[0].id, companyData[0].name,companyData[0].street, companyData[0].city, companyData[0].postalcode, companyData[0].cif, parseInt(pdf), finishFunction, vat, paymentType )
	}else if(type == 'thermalfacturation' || type == 'sales'){
		if(type == 'thermalfacturation'){
		//	console.error('entra1')
			data =  await DB_Facturation.findFacturationId(id)
		}
		if( type == 'sales'){
		//	console.error('entra1')
			data = await DB_Sales.fidSalesId(id)
		}
		//console.error('id--',id,'data--',data)
		let articles = await createArticlesToTicket(data)
		let vat = (data[0] && data[0].vat)?  data[0].vat : null
		vat = (vat)? vat : (config[0] && config[0].vat)? config[0].vat : 21
		let paid = (data[0] && data[0].paid)?  data[0].paid : null
		let time = moment.utc().format('DD-M-YY HH:mm:ss')
		createPrintWindow({
			html: createTicket({
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
					'delivered':paid
				}),
			printerName: config[0].tiketsprinter,
			config: ['thermalprinter']
		 })
	}else {
		app.quit()
	}
}

app.on('ready',createWindow)
app.on('window-all-closed', () => {
	if (process.platform !== 'darwin') {
	  app.quit()
	}
  })







const createPrintWindow = async (args) => {

    if(!args.config) args.config = []
	finishFunction = (args.finishFunction != undefined) ? args.finishFunction : false
    const hidden = isInConfig('hiddenWindow', args)
    const thermalprinter = isInConfig('thermalprinter', args)

    if (!args.html) throw 'bad Params';
    let windowProps = {
        height: 670,
        minHeight: 340,
        width: 820,
		minWidth: 400,
		webPreferences:{
			nodeIntegration: true
		}
    }
    if (hidden || thermalprinter) {
        windowProps.show = false
    }
    if (args.mainWindow) {
        windowProps.parent = args.mainWindow
    }

    let printWindow = new BrowserWindow(windowProps)

    printWindow.on('closed', () => {
        printWindow = null
    })

	printWindow.setMenu(null)
	printWindow.args = args
    printWindow.webContents.once('dom-ready', () => {
		if (isDevMode) {
			printWindow.webContents.openDevTools();
		}
		ipcMain.on('print-init', async (event, args) => {
			if(!printWindow.isVisible()){
				print(printWindow, args)
			}
		})
		ipcMain.on('print-init-click', async (event, args) => {
			if(printWindow.isVisible()){
				print(printWindow, args)
			}
		})

        printWindow.webContents.send('chargeHtml', { html: args.html, css: args.css, cssUrl: args.cssUrl, sheetSize:args.sheetSize, config: args.config, name:args.name });

        if (!hidden && !thermalprinter) {
            printWindow.show()
		}

    })
    if(thermalprinter){
        printWindow.loadFile(`${__dirname}/views/thermalPrinter.html`)
    }else{
        printWindow.loadFile(`${__dirname}/views/printer.html`)
    }

    printWindow.on('closed', () => {
        printWindow = null
    })

}

function print(printWindow, args ) {
	const close = (args.close)? args.close : false
	const pdf = (args.config && isInConfig('pdf', args))? true : false
	const pdfName = (printWindow.args.name)? printWindow.args.name : "tmp.pdf"
	const printerName = (printWindow.args.printerName)? printWindow.args.printerName : ''
    let printers = printWindow.webContents.getPrinters()

	const options = { silent: false,  printBackground: false  }
	if( printerName && printerName != '' && isInConfig('thermalprinter', printWindow.args)){
		for (let index = 0; index < printers.length; index++) {
			const element = printers[index];
			if(element.name.includes('tickets')){
				options.silent = true
				options.printBackground = true
				options.deviceName = element.name
			}
		}
	}

	if(printerName && printerName != ''){
		options.silent = true
		options.printBackground = true
		options.deviceName = printerName
	}

	if(pdf){
		const options = { printBackground: false }
		if(printerName && printerName != ''){
			options.silent = true
			options.printBackground = true
			options.deviceName = printerName
		}
		printWindow.webContents.printToPDF(options, async ( error, data) => {
			const dir = app.getPath('documents')+'/'+dirSave
			const pdfPath = dir +'/'+ pdfName +'.pdf'
			if (!data) console.log('data',error)
			if (!fs.existsSync(dir)){
				await  fs.mkdirSync(dir);
			}
			fs.writeFile(pdfPath, data, function (error) {
				if (error) {
				  throw error
				}
                if(finishFunction) finishFunction()
			  })
			if (close) printWindow.close()
		})

	}else{
		try {
			printWindow.webContents.print(options, async (success, errorType) => {
			  if (!success) console.log('data',errorType)
			  if(finishFunction) finishFunction()
			  if (close) printWindow.close()
			})

		} catch (error) {
			console.log('error',error)
		}
	}
}
/**
 *
 * @param {
 *  imgUrl,
 *  initial,
 *  final,
 *  articles:'[
 *      'quantity'
 *      'product'
 *      'price'
 *  ]',
 * } principalTitle
 */
const createTicket = (args) =>{
    let ticket = ''
    let img =''
    let initalTexts = ''
    let finalTexts  = ''
    if(args.imgUrl){
        img =`<img src="${args.imgUrl}" alt="Logotipo">`
    }
    if(args.initial){
        for (let index = 0; index < args.initial.length; index++) {
            const element = args.initial[index];
            initalTexts += `<br>${element}`
        }
    }
    if(args.final){
        for (let index = 0; index < args.final.length; index++) {
                const element = args.final[index];
                finalTexts += `<br>${element}`
        }
    }
    ticket +=`
        <div class="ticket">
            ${img}
            <p class="centrado">
                ${initalTexts}
            <table>
                <thead>
                    <tr>
                        <th class="cantidad">Cant</th>
                        <th class="producto">Descripción</th>
                        <th class="precio">Precio</th>
                        <th class="precio">Total</th>
                    </tr>
                </thead>
                <tbody>
                    ${createProducts(args.articles, args.iva, args.delivered)}
                </tbody>
            </table>
            <p class="centrado" style="">
                ${finalTexts}
            </p>
            <p style="padding-top: 8em">.</p>
        </div> `
    return ticket
}
const calcBasePrice = (price,vat) => {
    return (price / ((vat / 100) + 1)).toFixed(2)
}
const createProducts = (products, iva, delivered) =>{
    delivered = parseFloat(delivered)
    let productsHtml = ''
    let totalPrice = 0
    if(products){
        for (let index = 0; index < products.length; index++) {
            const element = products[index];
            totalPrice += element.price * element.quantity
            productsHtml += `
                <tr class="separator-top">
                    <td class="cantidad">${element.quantity}</td>
                    <td class="producto">${element.product}</td>
                    <td class="precio">${element.price}</td>
                    <td class="precio">${element.price * element.quantity}</td>
                </tr>
            `
        }
    }

    if(iva){
        const basePrice = parseFloat(calcBasePrice(totalPrice,iva))
        const totalIva = totalPrice - basePrice
        productsHtml += `
            <tr class="separator-top  total_group_top">
                <td class="bot_group_pading" colspan="4">IMPORTE: ${basePrice.toFixed(2)}</td>
            </tr>
            <tr class=" total_group_top">
            <td class="bot_group_pading" colspan="4">IVA: ${totalIva.toFixed(2)}</td>
            </tr>
            <tr class="total_group_bot ">
                <td class="bot_group_pading" colspan="4">TOTAL: ${totalPrice.toFixed(2)}</td>
            </tr>`
    }else{
        productsHtml += `
        <tr class="total_group_bot ">
            <td class="bot_group_pading" colspan="4">TOTAL: ${totalPrice.toFixed(2)}</td>
        </tr>`
    }
    if( delivered && delivered > 0 ){
        productsHtml += `
        <tr class="total_group_bot ">
            <td class="bot_group_pading" colspan="4" >Entregado: ${delivered.toFixed(2)}</td>
        </tr>
        <tr class="total_group_bot ">
            <td class="bot_group_pading" colspan="4">Cambio: ${(delivered - totalPrice).toFixed(2)}</td>
        </tr>`
    }
    productsHtml += `
    <tr>
        <td class="separator-top" colspan="4"></td>
    </tr>`
    return productsHtml
}
const printFacturation = async (articles, facturationNumber, date, clientNumber, client, streat, city, postalCode, cif, pdf = false, finishFunction = false, vat = null, formaDePago = ES[3] ) => {
	const cssFile = `${__dirname}/../../facturation/facturation.css`;
	const Dbconfig =  await DB_Configuration.findConfigurationById(1)
	const impuesto = vat? vat : (Dbconfig[0] && Dbconfig[0].vat)? Dbconfig[0].vat : 21
	if(formaDePago == ES[3]){
		const banknumber = (Dbconfig[0] && Dbconfig[0].banknumber)? Dbconfig[0].banknumber : ''
		formaDePago = `${formaDePago} <br> ${banknumber}`
	}
    const cssPromise = new Promise((resolve, reject) => {
        fs.readFile(cssFile, { encoding: 'utf-8' }, function(err, data) {
            if (!err) {
                resolve(data)
            } else {
                reject(err);
            }
        })
    })
    let topleft = [
        `Factura N.${facturationNumber}`,
        `Fecha: ${date}`,
        `N.cliente : ${clientNumber}`
    ]
    let topright = [
        `${client}`,
        `${streat}`,
        `${city}`,
        `${postalCode}`,
        `cif: ${cif}`,
    ]
	let config = [];
	if (pdf){
		config.push('pdf')
		config.push('hiddenWindow')
	}
    cssPromise.then(ccs => {
        createPrintWindow({
			css: ccs,
			config,
			name: facturationNumber,
			printerName: (Dbconfig[0] && Dbconfig[0].facturationprinter)? Dbconfig[0].facturationprinter: '',
			finishFunction,
            html: createHtml(articles, topleft, topright, formaDePago, impuesto)
        })
    })
}
