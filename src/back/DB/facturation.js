const knex = require('./connection')
const principalTableName = 'facturation_index';
const secundaryTableName = 'sales_facturation_list';
const DB_Facturation = class {
    static async fidFacturationData(ids) {
        return knex.select()
        .table(principalTableName)
        .whereIn(`${principalTableName}.id`, ids)
        .then((value) => value)
        .catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async fidFacturationId(id) {
        return knex.select()
            .table(principalTableName)
            .innerJoin(secundaryTableName, `${principalTableName}.id`, '=', `${secundaryTableName}.facturationId`)
            .where(`${principalTableName}.id`, id)
            .then((value) => value)
            .catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async fidFacturationfromCompanyId(id) {
        return knex.select()
            .table(principalTableName)
            .innerJoin(secundaryTableName, `${principalTableName}.id`,'=', `${secundaryTableName}.facturationId`)
            .where('company_id', id)
            .then((value) => value)
            .catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async findAllFacturation() {
        return knex.select()
            .from(principalTableName)
            .then((value) => value)
            .catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async insertFacturation(data) {

        return new Promise((resolve, reject) => {
            knex
                .table(principalTableName).insert(data.facturation)
                .returning('id')
                .then((response) => {
                    if (!response[0]) reject(new Error(`error al insertar en ${principalTableName}`))
                    let facturationId = { facturationId: response[0] }
                    let newData = [];
                    data.extra.forEach(element => {
                        newData.push(Object.assign({}, facturationId, element))
                    });
                    knex
                        .table(secundaryTableName).insert(newData)
                        .then(resp => resolve(response))
                        .catch(error => {
                            reject(new Error(`error al insertar en ${secundaryTableName} error: ${error}`))
                        })

                })
                .catch(error => {
                    reject(new Error(`error al insertar en ${principalTableName} ${secundaryTableName} error: ${error}`))
                })
        })
    }
    static async updatefacturation(id, datas) {
        return knex
            .table(principalTableName)
            .where('id', id)
            .update(datas)
            .catch(error => { console.error(error) })
    }
    static async deleteFacturation(id) {

        return knex
            .table(principalTableName)
            .where('id', id)
            .del()
            .catch(error => {
                console.error(error)
            })
    }
}
module.exports = { DB_Facturation }