const knex = require('./connection')

const DB_Companys = class {

    static async findCompanys(text) {
            return knex.select()
                .table('companys')
                .where('name', 'like', `%${text}%`)
                .then((value) => value)
                .catch(error => console.log(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))

        }
        /*
            datas: {name, contact, location, telephone, email}
        */
    static async updateCompany(id, datas) {
        debugger
        return knex
            .table('companys')
            .where('id', id)
            .update(datas)
            .catch(error => { console.log(error) })

    }
    static async deleteCompany(companyId) {

        return knex
            .table('companys')
            .where('id', companyId)
            .del()
            .catch(error => {
                console.log(error)
            })
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
    static async insertContactWithCompanyId(idcompany, email, name, telephone) {

        return knex
            .table('contacts').insert({ idcompany, email, name, telephone })
            .then((value) => value)
            .catch(error => {
                console.log(error)
            })
    }
    static async deleteContact(idcontacts) {

        return knex
            .table('contacts')
            .where('idcontacts', idcontacts)
            .del()
            .catch(error => {
                console.log(error)
            })
    }
    static async updateContact(idcontacts, datas) {

        return knex
            .table('contacts')
            .where('idcontacts', idcontacts)
            .update(datas)
            .catch(error => {
                console.log(error)
            })
    }
    static async deleteAllCompanyContacts(companyId) {

        return knex
            .table('contacts')
            .where('idcompany', companyId)
            .del()
            .catch(error => {
                console.log(error)
            })
    }
}
module.exports = { DB_Companys }