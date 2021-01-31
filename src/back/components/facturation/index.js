const fs = require('fs');
const { createPrintWindow } = require('simple-electron-printer-and-thermalprinter');
const { DB_Facturation } = require('../../DB/facturation')
const { DB_Companys } = require('../../DB/companys')
const { DB_Configuration } = require('../../DB/configuration')
const { createArticlesToTicket } = require('../printer/thermalprinter')
const { ES } = require('../../../i18n/paiments')
const moment = require('moment')
var childProcess = require('child_process');


const printFacturation = async (articles, facturationNumber, date, clientNumber, client, streat, city, postalCode, cif, pdf = false, finishFunction = false, vat = null, formaDePago = ES[3] ) => {
	const cssFile = `${__dirname}/facturation.css`;
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


const printFacturationFromFacturation = async (id, pdf = false, finishFunction = false) => {
	childProcess.exec(`electron ${__dirname}\\..\\printer\\printer-and-thermalprinter\\index.js -type facturation -id `+ id +' -pdf '+ (pdf));
}

const createHtml = (articles, topleft, topright, formadepago, impuesto = 21) => {
    let topLeftHtml = ''
    let toprightHtml = ''
    let articlesHtml = ''
    let precioConImpuesto = 0
    let precioSinImpuesto = 0
    let cantidadImpuesto = 0;
    for (let index = 0; index < topleft.length; index++) {
        topLeftHtml += `<p>${topleft[index]}</p>`
    }
    for (let index = 0; index < topright.length; index++) {
        toprightHtml += `<p>${topright[index]}</p>`
    }
    for (let index = 0; index < articles.length; index++) {
        articlesHtml += `<tr>
                            <td>${articles[index].product.replace(/(\r\n|\n|\r)/gm,"<br/>")}</td>
                            <td style="min-width: 70px;" >${articles[index].quantity}</td>
                            <td style="min-width: 70px;" >${articles[index].price}</td>
                            <td style="min-width: 70px;" >${articles[index].quantity * articles[index].price}</td>
                        </tr>`
        precioConImpuesto = precioConImpuesto + articles[index].quantity * articles[index].price
    }

    precioSinImpuesto = precioConImpuesto / ((impuesto / 100) + 1)
    cantidadImpuesto = precioConImpuesto - precioSinImpuesto
    precioConImpuesto = precioConImpuesto.toFixed(2)
    precioSinImpuesto = precioSinImpuesto.toFixed(2)
    cantidadImpuesto = cantidadImpuesto.toFixed(2)
    return `
    <table>
            <thead>

                <tr>
                    <td style="    text-align: center;">

                        <img class="img-top img-facturation-top" src='${__dirname}/microtex.jpg' />

                    </td>
                </tr>
            </thead>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td>
                                <div class="group-top-content">
                                    <div class="top-group">
                                        <div class="top-left">
                                            ${topLeftHtml}
                                        </div>
                                        <div class="top-right">
                                            ${toprightHtml}
                                        </div>
                                    </div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="articles">
                        <thead>
                            <tr>
                                <th>Descripción del Artículo</th>
                                <th>Cdad</th>
                                <th>Pre.Uni</th>
                                <th>Importe</th>
                            </tr>
                        </thead>
                        <tbody>
                           ${articlesHtml}
                        </tbody>
                    </table>

                </td>
                </tr>

                <tr>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <table class="resume-table">
                                        <tr>
                                            <td class='left-bot-box'>
                                                <table>
                                                    <tr>
                                                        <td class="not-border td-bold">
                                                            FORMA DE PAGO:
                                                        </td>
                                                    </tr>
                                                    <tr>
														<td>
															<spam>
																- ${formadepago}
															</spam>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="border: 0px"></td>
                                            <td class="right-bot-box">
                                                <table>
                                                    <tr>
                                                        <td class="td-bold">
                                                            IMPORTE :
														</td>
														<td>
															${precioSinImpuesto}
														</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="td-bold">
                                                            IMPUESTO :
														</td>
														<td>
															${impuesto}%  ${ cantidadImpuesto} €
														</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="td-bold">
                                                            TOTAL:
														</td>
														<td>
															${precioConImpuesto}
														</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tfoot>
                    <tr>
                        <td><br></td>
                    </tr>
                    <tr>
                        <td><br></td>
                    </tr>
                    <tr>
                        <td><br></td>
                    </tr>
                    <tr>
                        <td><br></td>
                    </tr>
                </tfoot>
        </table>
        <div class="foo">
            <tr>
                <td>
                    <table>
                        <tr class="table-bot-blue">
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr class='first-table-bot'>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr class='first-table-bot'>
                            <td class='footer-table-left'>Avenida de Atenas 2</td>
                            <td class='footer-table-center'></td>
                            <td class='footer-table-right'>Teléfono 916316272</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class='footer-table-left'>C.Comercial Las Rozas 2</td>
                            <td class='footer-table-center'></td>
                            <td class='footer-table-right'>www.micro-tex.com</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class='footer-table-left'>Locales 22 y 23</td>
                            <td class='footer-table-center'></td>
                            <td class='footer-table-right'>email: micro-tex@micro-tex.com</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class='footer-table-left'>28230 - Las Rozas (Madrid) </td>
                            <td class='footer-table-center'></td>
                            <td class='footer-table-right'></td>
                            <td></td>
                        </tr>
                        <tr class='last-table-bot'>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </div>
    `


}

module.exports = { printFacturation, printFacturationFromFacturation,createHtml }
