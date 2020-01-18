import { app, BrowserWindow, ipcMain } from 'electron';
import installExtension, { VUEJS_DEVTOOLS } from 'electron-devtools-installer';
import { enableLiveReload } from 'electron-compile';

import {createPrintWindow} from 'simple-electron-printer-and-thermalprinter';
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
    createWindow()
    ipcMain.on('text-fact', () => {
        createPrintWindow({html:`
        <img style='width: 100%;height: 129px;' src='${__dirname}/public/imgs/facturation/microtex.jpg'/>
        <div style='width: 100%; height: 200px;'>
            <div style='width: 40%;
            border-left-style: solid;
            padding-left: 7px;
            padding-right: 7px;
            margin-left: 7px;
            line-height: 4px;
            max-height: 60%;
            border: 2px solid black;'>
                <p>Factura N.12213</p>
                <p>Fecha: 2020-01-01</p>
                <p>N. cliente : 2124</p>
            </div>
            <div style='width: 40%;
                border-left-style: solid;
                padding-left: 7px;
                padding-right: 7px;
                margin-left: 51%;
                margin-top: -11%;
                line-height: 4px;
                max-height: 60%;
                border: 2px solid black;'>
                    <p>Raúl garcia de la fuente</p>
                    <p>c/menorca 2 1ºC</p>
                    <p>las rozas</p>
                    <p>28232</p>
                    <p>cif: B272827262</p>
            </div>
        </div>
        
        `})
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