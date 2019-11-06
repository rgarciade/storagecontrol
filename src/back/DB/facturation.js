const knex = require('./connection')
const principalTableName = 'facturation_index';
const secundaryTableName = 'sales_facturation_list';
const DB_Facturation = class {

    static async fidFacturationId(id) {
        return knex.select()
            .table(principalTableName)
            .innerJoin(secundaryTableName, ()=> {
                this.on(`${principalTableName}.id`, `${principalTableName}.facturationId`)
              })
            .where('id', id)
            .then((value) => value)
            .catch(error => console.log(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async fidFacturationfromEmail(email) {
        return knex.select()
            .table(principalTableName)
            .innerJoin(secundaryTableName, ()=> {
                this.on(`${principalTableName}.id`, `${principalTableName}.facturationId`)
              })
            .where('email', 'like', `%${email}%`)
            .then((value) => value)
            .catch(error => console.log(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async fidFacturationfromCompanyId(id) {
        return knex.select()
            .table(principalTableName)
            .innerJoin(secundaryTableName, ()=> {
                this.on(`${principalTableName}.id`, `${principalTableName}.facturationId`)
              })
            .where('companyId', id)
            .then((value) => value)
            .catch(error => console.log(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async findAllFacturation() {
        return knex.select()
            .from(principalTableName)
            .then((value) => value)
            .catch(error => console.log(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async insertFacturation(data) {

        return knex
            .table(principalTableName).insert(data)
            .returning('id')
            .then((value) => value)
            .then((id) => {
                    console.log(id[0]);  //id here
            })
            .catch(error => {
                console.log(error)
            })
    }
    static async updatefacturation(id, datas) {
        return knex
            .table(principalTableName)
            .where('id', id)
            .update(datas)
            .catch(error => { console.log(error) })
    }
    static async deleteFacturation(id) {

        return knex
            .table(principalTableName)
            .where('id', id)
            .del()
            .catch(error => {
                console.log(error)
            })
    }
}
module.exports = { DB_Facturation }