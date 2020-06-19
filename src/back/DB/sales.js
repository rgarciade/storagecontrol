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
    static async fidSalesIdsDatas(ids) {
        return knex.select()
        .table(principalTableName)
        .whereIn(`${principalTableName}.id`, ids)
        .then((value) => value)
        .catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async fidSalesIdAndDates(id, initialDate, finalDate) {
        return knex.select()
            .table(principalTableName)
            .innerJoin(secundaryTableName,`${principalTableName}.id`,'=',`${secundaryTableName}.saleId`)
            .where(`${principalTableName}.id`, id)
            .andWhere(`${principalTableName}.creation_date`, '>=' ,initialDate).andWhere(`${principalTableName}.creation_date`,'<=' ,`${finalDate} 23:59:59`)
            .then((value) => value)
            .catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async fidSalesDates(initialDate, finalDate) {
        return knex.select()
            .table(principalTableName)
            .innerJoin(secundaryTableName,`${principalTableName}.id`,'=',`${secundaryTableName}.saleId`)
            .andWhere(`${principalTableName}.creation_date`, '>=' ,initialDate).andWhere(`${principalTableName}.creation_date`,'<=' ,`${finalDate} 23:59:59`)
            .then((value) => value)
            .catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async fidDaySales() {
		return await knex.sum('price as daybox')
            .table(principalTableName)
            .where(`${principalTableName}.creation_date`, '>=' ,knex.select('date_reported').from('money_box').orderBy('date_reported','desc').limit(1) )

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
