const { BrowserWindow, ipcMain, app} = require('electron')
const { isInConfig } = require('./common')
const moment = require('moment')
const fs = require('fs')

const dirSave = 'printer'
let finishFunction = false
const isDevMode = process.execPath.match(/[\\/]electron/);


function createWindow () {
	/*sacar datos de base de datos por el id*/
	let id = 25
	let time = moment.utc().format('DD-M-YY HH:mm:ss')
	let articles = [
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 44},
		{quantity: 1, product: "pantalla", price: 55}
	]
	let vat = 21
	let delivered = null
	let printName = ""//"appPOS80AMUSE"
	console.error('ticket')
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
		printerName: printName,
		config: ['thermalprinter']
	 })
  }

app.on('ready',createWindow)
app.on('window-all-closed', () => {
	if (process.platform !== 'darwin') {
	  app.quit()
	}
  })







const createPrintWindow = (args) => {
    if(!args.config) args.config = []
	finishFunction = (args.finishFunction != undefined) ? args.finishFunction : false
    const hidden = isInConfig('hiddenWindow', args)
    const thermalprinter = isInConfig('thermalprinter', args)

    if (!args.html) throw 'bad Params';
    let windowProps = {
        height: 670,
        minHeight: 340,
        width: 820,
        minWidth: 400
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
			if (!data) console.log(error)
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
			  if (!success) console.log(errorType)
			  if(finishFunction) finishFunction()
			  if (close) printWindow.close()
			})

		} catch (error) {
			console.log(error)
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


