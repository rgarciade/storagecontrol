import { app, BrowserWindow, ipcMain, dialog } from 'electron';
import installExtension, { VUEJS_DEVTOOLS } from 'electron-devtools-installer';
import { enableLiveReload } from 'electron-compile';
const  { updateSingImg } = require('../back/components/email/email')

import store from "../store"


let mainWindow;

const isDevMode = process.execPath.match(/[\\/]electron/);
if (isDevMode) enableLiveReload();

const createWindow = async() => {
    // Create the browser window.
    mainWindow = new BrowserWindow({
        width: 1270,
        height: 600,
        minHeight: 600,
        minWidth: 1270,
        titleBarStyle: 'hidden',
        icon:`${__dirname}/../../icons/pc2_i4T_icon64x64.ico`
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

    createWindow()

	ipcMain.on('print-finish', async (event, args) => {
		store.commit('alert','Fin de la impresion');
	})
	ipcMain.on('get-printers', async (event, args) => {
		let printers = mainWindow.webContents.getPrinters()
		if(printers.lenght <= 0){
			printers = [{
				name: 'Impresoras no encontradas',
				displayName: 'Impresoras no encontradas',
			}]
		}
		store.commit('printers', printers);
	})


	ipcMain.on('select-sing',  (event, args) => {
	 	let urlImg = dialog.showOpenDialog({ properties: ['openFile'] })
		//updateimg
		updateSingImg(urlImg[0])
		.then(()=>{
			store.commit('alert','imagen de firma actualizada');
		}).catch(error => {
			store.commit('alert',error);
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
