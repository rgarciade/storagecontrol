const knex = require('./connection')
const principalTableName = 'facturation_index'
const secundaryTableName = 'sales_facturation_list'
const DB_Facturation = class {
    static async fidFacturationData(ids) {
        return knex.select()
        .table(principalTableName)
        .whereIn(`${principalTableName}.id`, ids)
        .then((value) => value)
        .catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async findFacturationId(id) {
        return knex.select()
            .table(principalTableName)
            .innerJoin(secundaryTableName, `${principalTableName}.id`, '=', `${secundaryTableName}.facturationId`)
            .where(`${principalTableName}.id`, id)
            .then((value) => value)
            .catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async findFacturationIdAndDates(id , initialDate, finalDate) {
        return knex.select()
            .table(principalTableName)
            .innerJoin(secundaryTableName, `${principalTableName}.id`, '=', `${secundaryTableName}.facturationId`)
            .where(`${principalTableName}.id`, id)
            .andWhere(`${principalTableName}.creation_date`, '>=' ,initialDate).andWhere(`${principalTableName}.creation_date`,'<=' ,`${finalDate} 23:59:59`)
            .then((value) => value)
            .catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async findFacturationDates(initialDate, finalDate) {
        return knex.select()
            .table(principalTableName)
            .innerJoin(secundaryTableName, `${principalTableName}.id`, '=', `${secundaryTableName}.facturationId`)
            .andWhere(`${principalTableName}.creation_date`, '>=' ,initialDate).andWhere(`${principalTableName}.creation_date`,'<=' ,`${finalDate} 23:59:59`)
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
    static async fidFacturationfromCompanyIdAndDates(id, initialDate, finalDate) {
        return knex.select()
            .table(principalTableName)
            .innerJoin(secundaryTableName, `${principalTableName}.id`,'=', `${secundaryTableName}.facturationId`)
            .where(`${principalTableName}.company_id`, id)
            .andWhere(`${principalTableName}.creation_date`, '>=' ,initialDate).andWhere(`${principalTableName}.creation_date`,'<=' ,`${finalDate} 23:59:59`)
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
    static async insertInFacturationList(newData){
        return knex.table(secundaryTableName).insert(newData)
                .then(resp => resolve(response))
                .catch(error => {
                    throw new Error(`error al insertar en ${secundaryTableName} error: ${error}`)
                })
    }
    static async deleteInFacturationsList(ids){
            return knex
            .table(secundaryTableName)
            .whereIn('id', ids)
            .del()
            .catch(error => {
                throw new Error(`error al insertar en ${secundaryTableName} error: ${error}`)
            })
    }
    static async updateInFacturationList(id,data){
        return knex
            .table(secundaryTableName)
            .where('id', id)
            .update(data)
            .catch(error => {
                throw new Error(`error al updatear en ${secundaryTableName} error: ${error}`)
            })
    }
    static async updateFacturationAndArticles(id, price,newArticles, deleteArticlesIds, updateArticles){
        return new Promise((resolve, reject) => {
            for (let index = 0; index < newArticles.length; index++) {
                const article = newArticles[index];
                this.insertInFacturationList({
                    facturationId : id,
                    articleId: article.idarticles,
                    description: article.description,
                    price: article.public_price,
                    units: article.numberOfArticles
                }).catch(error => {
                    throw new Error(`error al insertar en ${principalTableName} ${secundaryTableName} error: ${error}`)
                })
            }
            for (let index = 0; index < updateArticles.length; index++) {
                const article = updateArticles[index];
                this.updateInFacturationList(article.productid,{
                    description: article.description,
                    price: article.public_price,
                    units: article.numberOfArticles
                })
            }
            if(deleteArticlesIds.length) this.deleteInFacturationsList(deleteArticlesIds)
            this.updatefacturation(id,{ price })
            resolve('update OK')
        }).catch(error => {
            console.error(error)
            reject(error)
        })
    }
}
module.exports = { DB_Facturation }