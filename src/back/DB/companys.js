const knex = require('./connection')

const DB_Companys = class {

    static async findCompanys(text) {
        return knex.select()
            .table('companys')
            .where('name', 'like', `%${text}%`)
            .then((value) => value)
            .catch(error => console.log(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))

    }
    static async findCompanyDataContacts(companyId) {
        return knex.select()
            .table('contacts')
            .where('idcompany', companyId)
            .then((value) => value)
            .catch(error => console.log(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))

    }
    static async findCompanyWithData(name) {
        return knex.select()
            .table('companys')
            .where('name', name)
            .then((value) => value)
            .catch(error => console.log(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
}
module.exports = { DB_Companys }