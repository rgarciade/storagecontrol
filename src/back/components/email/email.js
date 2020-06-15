const nodemailer = require("nodemailer");
const { DB_Configuration } = require('../../DB/configuration')

const  sendEmail = async ( to, subject, body, attachments = null, footerImg = null ) =>{

		return new Promise(function(resolve, reject) {
			DB_Configuration.findPrincipalConfiguration().then( async config => {
				try {
					const configurationData = JSON.parse(JSON.stringify(config[0]))
					if(!config || !config[0]){
						throw new Error('error to find email configuration')
					}
					let transport = await nodemailer.createTransport({
						host: configurationData.mailhost,
						port: configurationData.mailhost,
						secure: configurationData.secure,
						auth: { user: configurationData.mail, pass :configurationData.mailpassword,	}
					});
					let files = []
					for (let index = 0; index < attachments.length; index++) {
						const filePath = attachments[index];
						files.push( { path : filePath} )
					}
					if(!footerImg) footerImg = configurationData.mailimg //Buffer.from( config.data.mailimg, 'binary').toString();
					files.push({   // binary buffer as an attachment
						filename: 'firma',
						content: Buffer.from( configurationData.mailimg, 'binary').toString(),
						encoding: 'base64',
						cid: 'firma'
					})
					if(footerImg){
						body = `<div>${body} </br></br> <img src="cid:firma" /></div>`
					}
					resolve(await transport.sendMail({
						from: configurationData.mailhost,// sender address
						to, // list of receivers
						subject, // Subject line
						html: body, // html body
						attachments: files
					}));
				} catch (error) {
					reject(error)
				}
			})
		})
}

module.exports = { sendEmail }
/*sendEmail('raulgarcia_dlf@hotmail.com','factura mes de juniosssss1','a qui escribe lo que sea', ["C:/Users/raulg/Documents/repos/storagecontrol/README.md"])
 .then(mail => console.log(mail))
 .catch(console.error);*/

