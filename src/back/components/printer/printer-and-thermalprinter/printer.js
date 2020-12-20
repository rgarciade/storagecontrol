const ipcRenderer = require('electron').ipcRenderer;
const moment = require('moment')
const { isInConfig } = require('./common')

const addHtmlToBody = (html) => {
    let body = document.getElementById("page")
    body.innerHTML = html
}

ipcRenderer.on('chargeHtml', (event, args) => {
    if (args.css) {
        addCStyles(args.css)
    }
    if (args.cssNode) {
        addCStylesNode(args.cssNode)
    }
    if (args.cssUrl) {
        addCStylesUrl(args.cssUrl)
    }
    addHtmlToBody(args.html)
    if(args.sheetSize && ['A4','A3','A5'].includes(args.sheetSize)){
        document.getElementsByTagName('body')[0].className = `${args.sheetSize} ${localStorage.getItem('landscape')}`
        localStorage.setItem('PageType', args.sheetSize);
    }else{
        localStorage.setItem('PageType', 'A4');
    }

    if (isInConfig('timePrinter', args)) {
        document.getElementById("timePrinter").style.display = ''
        document.getElementById("timePrinter").innerHTML = moment.utc().format('YYYY-MM-DD HH:mm:ss');
    }
    if (isInConfig('hiddenWindow', args) || isInConfig('thermalprinter', args)) {
        setTimeout(function(){ print( args,true ) }, 1000);
    }

})

const transformScale = (scale) => {
    document.getElementById("body").style.transform = `scale(${scale})`;
}
const addCStyles = (styles) => {
    let css = document.createElement('style')
    css.innerHTML = styles
    document.getElementsByTagName("HEAD")[0].appendChild(css)

}
const addCStylesNode = (stylesNodde) => {
    document.getElementsByTagName("HEAD")[0].appendChild(stylesNodde)
}
const addCStylesUrl = (stylesUrl) => {
    var cssLink = document.createElement('link')
    cssLink.setAttribute("rel", "stylesheet")
    cssLink.setAttribute("type", "text/css")
    cssLink.setAttribute("href", stylesUrl)
    document.getElementsByTagName("HEAD")[0].appendChild(cssLink)

}
function print(args,close) {
	args.close = close
    ipcRenderer.send('print-init', args )
}

function printClick(close) {
    ipcRenderer.send('print-init-click', { close })
}


module.exports = { transformScale, print , printClick}
