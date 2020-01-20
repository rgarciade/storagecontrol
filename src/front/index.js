import { app, BrowserWindow, ipcMain } from 'electron';
import installExtension, { VUEJS_DEVTOOLS } from 'electron-devtools-installer';
import { enableLiveReload } from 'electron-compile';

import { createPrintWindow } from 'simple-electron-printer-and-thermalprinter';
import store from "../store"
const knex = require('../back/DB/connection')

let mainWindow;

const isDevMode = process.execPath.match(/[\\/]electron/);

if (isDevMode) enableLiveReload();

const createWindow = async() => {
    // Create the browser window.
    mainWindow = new BrowserWindow({
        width: 1270,
        height: 500,
        minHeight: 500,
        minWidth: 1270,
        titleBarStyle: 'hidden'
    });
    mainWindow.setMenu(null);
    // and load the index.html of the app.
    mainWindow.loadURL(`file://${__dirname}/index.html`);

    // Open the DevTools.
    if (isDevMode) {
        await installExtension(VUEJS_DEVTOOLS);
        mainWindow.webContents.openDevTools();
    }

    // Emitted when the window is closed.
    mainWindow.on('closed', () => {
        // Dereference the window object, usually you would store windows
        // in an array if your app supports multi windows, this is the time
        // when you should delete the corresponding element.
        mainWindow = null;
    });
};

// This method will be called when Electron has finished
// initialization and is ready to create browser windows.
// Some APIs can only be used after this event occurs.
app.on('ready', () => {
    // Example of usage of Vuex Store from the main process
    // Results of action will be automatically passed to all renderer processes
    store.commit('count', 2)
    let ccss = ` thead {
        width: 100%;
        height: 20px;
    }
    
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }
    
    td,
    th {
        text-align: left;
        padding: 8px;
    }
    
    body {
        color: black;
    }
    /*     .img-top {
    width: 100%;
    height: 129px;
} */
    
    .top-left {
        width: 40%;
        position: absolute;
        border-left-style: solid;
        padding-left: 7px;
        padding-right: 7px;
        margin-left: 7px;
        line-height: 4px;
        max-height: 60%;
        border: 1px solid black;
    }
    
    .top-right {
        width: 40%;
        position: absolute;
        border-left-style: solid;
        padding-left: 7px;
        margin-left: 51%;
        line-height: 4px;
        border: 1px solid black;
    }
    
    .top-group {
        position: relative;
        height: 150px;
    }
    
    .articles {
        width: 95%;
        border-collapse: collapse;
        border-left-style: solid;
        padding-left: 7px;
        padding-bottom: 9px;
        border: 2px solid black;
    }
    
    .articles tbody tr td,
    .articles tbody tr th {
        border: 1px solid #dddddd;
    }
    
    .table-blue-fotter {
        position: absolute;
        float: bottom;
        /* for bottom gap */
        margin-top: -250px;
        bottom: 0;
    }
    
    .table-blue-fotter tr td {
        border: 0px;
    }
    
    .bot-left {
        width: 40%;
        position: relative;
        border-left-style: solid;
        padding: 7px;
        border: 1px solid black;
    }
    
    .bot-right {
        width: 40%;
        position: absolute;
        float: right;
        padding: 7px;
        top: -3%;
        right: 0;
    }
    
    .bot-right-box {
        border: 1px solid black;
        padding: 7px;
    }
    
    .bot-bot {
        margin-top: 7%;
    }
    
    .bot-group {
        width: 100%;
    }
    
    .botton-color {
        color: blue;
        line-height: 3px;
        bottom: 0px;
        position: relative;
    }
    
    .group-top-content {
        width: 100%;
    }
    
    .tb-bot {
        border: 0px
    }
    
    .tb-bot td {
        border: 1px solid black;
        text-align: -webkit-center;
        color: blue;
        padding: 0px;
    }
    
    .footer-table-left {
        width: 40%;
        text-align: -webkit-center;
        color: blue;
        padding: 0px;
    }
    
    .footer-table-center {
        width: 20%;
    }
    
    .footer-table-right {
        width: 40%;
        color: blue;
        padding: 0px;
    }
    
    .left-bot-box {
        width: 30%;
        max-width: 30%;
        border: 1px solid black !important;
    }
    
    .right-bot-box {
        width: 40%;
        max-width: 30%;
        border: 1px solid black !important;
    }
    
    .table-bot-blue {
        border-bottom: 1px solid blue;
    }
    
    .first-table-bot {
        padding-top: 2px;
    }
    
    .last-table-bot {
        padding-bottom: 2px;
        border-bottom: 1px solid blue;
    }
    
    body{
        word-break: break-all;
    }
    @media print {
        .foo {
            position: fixed;
            bottom: 15px;
            left: 2.5%;
            max-width: 95%;
        }
    }
    @media screen {
        .foo {
            
        }
    }
    
    `
    createWindow()
    ipcMain.on('text-fact', () => {
        createPrintWindow({
            css: ccss,
            html: `            <table>
            <thead>

                <tr>
                    <td style="    text-align: center;">

                        <img class="img-top" src='${__dirname}/public/imgs/facturation/microtex.jpg' />

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
                                            <p>Factura N.12213</p>
                                            <p>Fecha: 2020-01-01</p>
                                            <p>N. cliente : 2124</p>
                                        </div>
                                        <div class="top-right">
                                            <p>Raúl garcia de la fuente</p>
                                            <p>c/menorca 2 1ºC</p>
                                            <p>las rozas</p>
                                            <p>28232</p>
                                            <p>cif: B272827262</p>
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
                            <tr>
                                <td>Ordenador de sobremesa <br> Ordenador de sobremesa</td>
                                <td>2</td>
                                <td>200</td>
                                <td>400</td>
                            </tr>
                            <tr>
                                <td>panttallas</td>
                                <td>2</td>
                                <td>100</td>
                                <td>200</td>
                            </tr>
                            <tr>
                                <td>panttallas</td>
                                <td>2</td>
                                <td>100</td>
                                <td>200</td>
                            </tr>
                            <tr>
                                <td>panttallas</td>
                                <td>2</td>
                                <td>100</td>
                                <td>200</td>
                            </tr>
                            <tr>
                                <td>panttallas</td>
                                <td>2</td>
                                <td>100</td>
                                <td>200</td>
                            </tr>
                            <tr>
                                <td>panttallas</td>
                                <td>2</td>
                                <td>100</td>
                                <td>200</td>
                            </tr>
                            <tr>
                                <th>Descripción del Artículo</th>
                                <th>Cdad</th>
                                <th>Pre.Uni</th>
                                <th>Importe</th>
                                <tr>
                                    <td>Ordenador de sobremesa <br> Ordenador de sobremesa</td>
                                    <td>2</td>
                                    <td>200</td>
                                    <td>400</td>
                                </tr>
                                <tr>
                                    <td>panttallas</td>
                                    <td>2</td>
                                    <td>100</td>
                                    <td>200</td>
                                </tr>
                                <tr>
                                    <td>panttallas</td>
                                    <td>2</td>
                                    <td>100</td>
                                    <td>200</td>
                                </tr>
                                <tr>
                                    <td>panttallas</td>
                                    <td>2</td>
                                    <td>100</td>
                                    <td>200</td>
                                </tr>
                                <tr>
                                    <td>panttallas</td>
                                    <td>2</td>
                                    <td>100</td>
                                    <td>200</td>
                                </tr>
                                <tr>
                                    <td>panttallas</td>
                                    <td>2</td>
                                    <td>100</td>
                                    <td>200</td>
                                </tr>
                                <tr>
                                    <th>Descripción del Artículo</th>
                                    <th>Cdad</th>
                                    <th>Pre.Uni</th>
                                    <th>Importe</th>
                                    <tr>
                                        <td>Ordenador de sobremesa <br> Ordenador de sobremesa</td>
                                        <td>2</td>
                                        <td>200</td>
                                        <td>400</td>
                                    </tr>
                                    <tr>
                                        <td>panttallas</td>
                                        <td>2</td>
                                        <td>100</td>
                                        <td>200</td>
                                    </tr>
                                    <tr>
                                        <td>panttallas</td>
                                        <td>2</td>
                                        <td>100</td>
                                        <td>200</td>
                                    </tr>
                                    <tr>
                                        <td>panttallas</td>
                                        <td>2</td>
                                        <td>100</td>
                                        <td>200</td>
                                    </tr>
                                    <tr>
                                        <td>panttallas</td>
                                        <td>2</td>
                                        <td>100</td>
                                        <td>200</td>
                                    </tr>
                                    <tr>
                                        <td>panttallas</td>
                                        <td>2</td>
                                        <td>100</td>
                                        <td>200</td>
                                    </tr>
                                    <tr>
                                        <th>Descripción del Artículo</th>
                                        <th>Cdad</th>
                                        <th>Pre.Uni</th>
                                        <th>Importe</th>
                                        <tr>
                                            <td>Ordenador de sobremesa <br> Ordenador de sobremesa</td>
                                            <td>2</td>
                                            <td>200</td>
                                            <td>400</td>
                                        </tr>
                                        <tr>
                                            <td>panttallas</td>
                                            <td>2</td>
                                            <td>100</td>
                                            <td>200</td>
                                        </tr>
                                        <tr>
                                            <td>panttallas</td>
                                            <td>2</td>
                                            <td>100</td>
                                            <td>200</td>
                                        </tr>
                                        <tr>
                                            <td>panttallas</td>
                                            <td>2</td>
                                            <td>100</td>
                                            <td>200</td>
                                        </tr>
                                        <tr>
                                            <td>panttallas</td>
                                            <td>2</td>
                                            <td>100</td>
                                            <td>200</td>
                                        </tr>
                                        <tr>
                                            <td>panttallas</td>
                                            <td>2</td>
                                            <td>100</td>
                                            <td>200</td>
                                        </tr>
                                        <tr>
                                            <th>Descripción del Artículo</th>
                                            <th>Cdad</th>
                                            <th>Pre.Uni</th>
                                            <th>Importe</th>
                                        </tr>
                                        <tr>
                                            <td>panttallas</td>
                                            <td>2</td>
                                            <td>100</td>
                                            <td>200</td>
                                        </tr>
                                        <tr>
                                            <td>panttallas</td>
                                            <td>2</td>
                                            <td>100</td>
                                            <td>200</td>
                                        </tr>
                                        <tr>
                                            <td>panttallas</td>
                                            <td>2</td>
                                            <td>100</td>
                                            <td>200</td>
                                        </tr>
                                        <tr>
                                            <td>panttallas</td>
                                            <td>2</td>
                                            <td>100</td>
                                            <td>200</td>
                                        </tr>
                                        <tr>
                                            <td>panttallas</td>
                                            <td>2</td>
                                            <td>100</td>
                                            <td>200</td>
                                        </tr>
                                        <tr>
                                            <th>Descripción del Artículo</th>
                                            <th>Cdad</th>
                                            <th>Pre.Uni</th>
                                            <th>Importe</th>
                                        </tr>
                                        <tr>
                                            <td>panttallas</td>
                                            <td>2</td>
                                            <td>100</td>
                                            <td>200</td>
                                        </tr>
                                        <tr>
                                            <td>panttallas</td>
                                            <td>2</td>
                                            <td>100</td>
                                            <td>200</td>
                                        </tr>
                                        <tr>
                                            <td>panttallas</td>
                                            <td>2</td>
                                            <td>100</td>
                                            <td>200</td>
                                        </tr>
                                        <tr>
                                            <td>panttallas</td>
                                            <td>2</td>
                                            <td>100</td>
                                            <td>200</td>
                                        </tr>
                                        <tr>
                                            <td>panttallas</td>
                                            <td>2</td>
                                            <td>100</td>
                                            <td>200</td>
                                        </tr>
                                        <tr>
                                            <th>Descripción del Artículo</th>
                                            <th>Cdad</th>
                                            <th>Pre.Uni</th>
                                            <th>Importe</th>
                                        </tr>
                        </tbody>
                    </table>

                </td>
                </tr>

                <tr>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <table>
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
                                                            Transferencia la caixa Es132541512151
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="border: 0px"></td>
                                            <td class="right-bot-box">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            importe : 200€
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            impuestos : 21% - 42 €
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            tortal: 242
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td></td>
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
                            <td class='footer-table-right'>email: micro-texx@micro-tex.com</td>
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
        })
    })
});

// Quit when all windows are closed.
app.on('window-all-closed', () => {
    // On OS X it is common for applications and their menu bar
    // to stay active until the user quits explicitly with Cmd + Q
    if (process.platform !== 'darwin') {
        app.quit();
    }
});

app.on('activate', () => {
    // On OS X it's common to re-create a window in the app when the
    // dock icon is clicked and there are no other windows open.
    if (mainWindow === null) {
        createWindow();
    }
});

// In this file you can include the rest of your app's specific main process
// code. You can also put them in separate files and import them here.