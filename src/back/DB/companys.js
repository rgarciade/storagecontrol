const knex = require('./connection')

const DB_Companys = class {

    static async findCompanys(text) {
        return knex.select()
            .table('companys')
            .where('name', 'like', `%${text}%`)
            .orWhere('cif', 'like', `%${text}%`)
            .then((value) => value)
            .catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))

    }

    static async updateCompany(id, datas) {
        console.error('--', datas)
        return knex
            .table('companys')
            .where('id', id)
            .update(datas)

    }
    static async deleteCompany(companyId) {

        return knex
            .table('companys')
            .where('id', companyId)
            .del()
            .catch(error => {
                console.error(error)
            })
    }
    static async deleteContacts(idcontacts) {

        return knex
            .table('contacts')
            .where('idcontacts', idcontacts)
            .del()
            .catch(error => {
                console.error(error)
            })
    }
    static async findCompanyDataContacts(companyId) {
        return knex.select()
            .table('contacts')
            .where('idcompany', companyId)
            .then((value) => value)
            .catch(error => console.error(error))

    }
    static async findCompanyWithData(companyId) {
        return knex.select()
            .table('companys')
            .where('id', companyId)
            .then((value) => value)
            .catch(error => console.error(error))
    }
    static async insertContactWithCompanyId(idcompany, email, name, telephone) {

        return knex
            .table('contacts').insert({ idcompany, email, name, telephone })
            .then((value) => value)
            .catch(error => {
                console.error(error)
            })
    }
    static async insertCompany(data) {

        return knex
            .table('companys').insert(data)
            .then((value) => value)
            .catch(error => {
                console.error(error)
            })
    }
    static async deleteContact(idcontacts) {

        return knex
            .table('contacts')
            .where('idcontacts', idcontacts)
            .del()
            .catch(error => {
                console.error(error)
            })
    }
    static async updateContact(idcontacts, datas) {

        return knex
            .table('contacts')
            .where('idcontacts', idcontacts)
            .update(datas)
            .catch(error => {
                console.error(error)
            })
    }
    static async deleteAllCompanyContacts(companyId) {

        return knex
            .table('contacts')
            .where('idcompany', companyId)
            .del()
            .catch(error => {
                console.error(error)
            })
    }
}
module.exports = { DB_Companys }