const { app, BrowserWindow } = require('electron')
const { createPrintWindow,createTicket } = require('simple-electron-printer-and-thermalprinter');
const moment = require('moment')

function createWindow () {
  const win = new BrowserWindow({
    width: 800,
    height: 600,
    webPreferences: {
      nodeIntegration: true
	}
	//show: false
  })

  win.loadFile('test.html')
  win.webContents.openDevTools();
  win.webContents.once('dom-ready', () => {
	  console.error('aaaaa')
	setTimeout(function(){ console.error('bbbb');print(); }, 3000);

  })
}

app.on('ready',createWindow)

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    app.quit()
  }
})

app.on('activate', () => {
  if (BrowserWindow.getAllWindows().length === 0) {
    createWindow()
  }
})

function print(){
	console.error('aa')
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
