const nodemailer = require("nodemailer");
const fs  = require("fs");
const { DB_Configuration } = require('../../DB/configuration')


const  sendEmail = async ( to, subject, body, attachments = null, footerImg = null ) =>{

		return new Promise(function(resolve, reject) {
			DB_Configuration.findPrincipalConfiguration().then( async config => {
				try {
					const configurationData = JSON.parse(JSON.stringify(config[0]))
					if(!config || !config[0]){
						throw new Error('error to find email configuration')
					}
					if(
						!config[0].mail ||
						!config[0].mailpassword ||
						!config[0].mailhost ||
						!config[0].mailport ||
						!config[0].secure
					){ reject('Termine de configurar su correo en la ventana de configuración')}
					let transport = null
					if(configurationData.tls){
						transport = await nodemailer.createTransport({
							host: configurationData.mailhost,
							port: configurationData.mailhost,
							secure: configurationData.secure,
							auth: { user: configurationData.mail, pass :configurationData.mailpassword	},
							tls: {
								ciphers:'SSLv3'
							 },

						});
					}else{
						transport = await nodemailer.createTransport({
							host: configurationData.mailhost,
							port: configurationData.mailhost,
							secure: configurationData.secure,
							auth: { user: configurationData.mail, pass: configurationData.mailpassword	}
						});
					}

					let files = []
					if(attachments){
						for (let index = 0; index < attachments.length; index++) {
							const filePath = attachments[index];
							files.push( { path : filePath} )
						}
					}
					if(!footerImg) footerImg = configurationData.mailimg //Buffer.from( config.data.mailimg, 'binary').toString();
					if(configurationData.mailimg){
						files.push({   // binary buffer as an attachment
							filename: 'firma',
							content: Buffer.from( configurationData.mailimg, 'binary').toString(),
							encoding: 'base64',
							cid: 'firma'
						})
					}
					if(footerImg){
						body = `<div>${body} </br></br> <img src="cid:firma" /></div>`
					}
					resolve(await transport.sendMail({
						from: configurationData.mail,// sender address
						to, // list of receivers
						subject, // Subject line
						html: body, // html body
						attachments: files
					}));
				} catch (error) {
					if(error.message) reject(error.message)
					reject(error)
				}
			})
		})
}
const updateSingImg = async (urlImg) => {
	return new Promise(function(resolve, reject) {
		var imageData = fs.readFileSync(urlImg);
		let imgBuffer = Buffer.from(imageData, 'binary').toString('base64');
		DB_Configuration.updatePrincipalConfiguration({
			'mailimg' : imgBuffer
		})
		.then((result)=>resolve(result))
		.catch(error => {
			reject(error.sqlMessage)
		})

	})
}
module.exports = { sendEmail, updateSingImg }
/*sendEmail('raulgarcia_dlf@hotmail.com','factura mes de juniosssss1','a qui escribe lo que sea', ["C:/Users/raulg/Documents/repos/storagecontrol/README.md"])
 .then(mail => console.log(mail))
 .catch(console.error);*/

