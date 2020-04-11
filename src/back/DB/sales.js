const knex = require('./connection')
const principalTableName = 'sales_index';
const secundaryTableName = 'sales_facturation_list';
const DB_Sales = class {

    static async fidSalesId(id) {
        return knex.select()
            .table(principalTableName)
            .innerJoin(secundaryTableName,`${principalTableName}.id`,'=',`${secundaryTableName}.saleId`)
            .where(`${principalTableName}.id`, id)
            .then((value) => value)
            .catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async findAllSales() {
        return knex.select()
            .from(principalTableName)
            .then((value) => value)
            .catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async insertSales(data) {

        return new Promise((resolve, reject) => {
            knex
                .table(principalTableName).insert(data.sale)
                .returning('id')
                .then((response) => {
                    if (!response[0]) reject(new Error(`error al insertar en ${principalTableName}`))
                    let saleId = { saleId: response[0] }
                    let newData = [];
                    data.extra.forEach(element => {
                        newData.push(Object.assign({}, saleId, element))
                    });

                    knex
                        .table(secundaryTableName).insert(newData)
                        .then(resp =>{
                            resolve(response)
                        })
                        .catch(error => {
                            reject(new Error(`error al insertar en ${secundaryTableName} error: ${error}`))
                        })

                })
                .catch(error => {
                    reject(new Error(`error al insertar en ${principalTableName} ${secundaryTableName} error: ${error}`))
                })
        })
    }
    static async updateSales(id, datas) {
        return knex
            .table(principalTableName)
            .where('id', id)
            .update(datas)
            .catch(error => { console.error(error) })
    }
    static async deleteSales(id) {

        return knex
            .table(principalTableName)
            .where('id', id)
            .del()
            .catch(error => {
                console.error(error)
            })
    }
}
module.exports = { DB_Sales }