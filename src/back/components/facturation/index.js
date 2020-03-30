const fs = require('fs');
const { createPrintWindow, createTicket } = require('simple-electron-printer-and-thermalprinter');

const printFacturation = (articles, facturationNumber, date, clientNumber, cliet, streat, city, postalCode, cif) => {
    const cssFile = `${__dirname}/facturation.css`;
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
        `${cliet}`,
        `${streat}`,
        `${city}`,
        `${postalCode}`,
        `cif: ${cif}`,
    ]
    let formaDePago = 'transferencia'
    let impuesto = 21

    cssPromise.then(ccs => {
        createPrintWindow({
            css: ccs,
            html: createHtml(articles, topleft, topright, formaDePago, impuesto)
        })
    })
}


const printFacturationFromFacturation = async ( id ) => {
    let facturation =  await DB_Facturation.fidFacturationId(id) 
    let articles = await createArticlesToTicket(facturation)
    printTicket( id, articles )
}
const printFacturationFromSales = async ( id ) => {
    let sales =  await DB_Sales.fidSalesId(id) 
    let articles = await createArticlesToTicket(sales)
    printTicket(id, articles)
}

const createHtml = (articles, topleft, topright, formadepago, impuesto) => {
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
                            <td>${articles[index].texto}</td>
                            <td>${articles[index].cantidad}</td>
                            <td>${articles[index].precio}</td>
                            <td>${articles[index].cantidad * articles[index].precio}</td>
                        </tr>`
        precioConImpuesto = precioConImpuesto + articles[index].cantidad * articles[index].precio
    }

    precioSinImpuesto = precioConImpuesto / ((21 / 100) + 1)
    cantidadImpuesto = precioConImpuesto - precioSinImpuesto
    precioConImpuesto = precioConImpuesto.toFixed(2)
    precioSinImpuesto = precioSinImpuesto.toFixed(2)
    cantidadImpuesto = cantidadImpuesto.toFixed(2)
    return `
    <table>
            <thead>

                <tr>
                    <td style="    text-align: center;">

                        <img class="img-top" src='${__dirname}/microtex.jpg' />

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
                                                        <td class="not-border">
                                                            Forma de pago:
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            ${formadepago}
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="border: 0px"></td>
                                            <td class="right-bot-box">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            importe : ${precioSinImpuesto}
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            impuestos : ${impuesto}%  ${ cantidadImpuesto} €
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            tortal: ${precioConImpuesto}
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
                            <td class='footer-table-left'>Avenida de atenas 12</td>
                            <td class='footer-table-center'></td>
                            <td class='footer-table-right'>telefono 916316272</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class='footer-table-left'>c.comercial las rozas 2</td>
                            <td class='footer-table-center'></td>
                            <td class='footer-table-right'>www.micro-tex.com 1</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class='footer-table-left'>Locales 22,23</td>
                            <td class='footer-table-center'></td>
                            <td class='footer-table-right'>email: micro-tex@micro-tex.com</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class='footer-table-left'>28232 - las rozas madrid </td>
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

module.exports = { printFacturation }