const knex = require('./connection')
const tableName = 'articles';
const DB_Articles = class {

    static async findIdArticles(id) {
        return knex.select()
            .table(tableName)
            .where('idarticles', id)
            .then((value) => value)
            .catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async returnStructure() {
        return knex.table(tableName)
            .columnInfo()
            .then((value) => value)
            .catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async findArticles(text = null) {
        return knex.select()
            .table(tableName)
            .where('description', 'like', `%${text}%`)
			.orWhere('productid', 'like', `%${text}%`)
			.limit(40)
            .then((value) => value)
            .catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async findAllArticles() {
        return knex.select()
            .from(tableName)
            .then((value) => value)
            .catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async insertArticle(data) {

        return knex
            .table(tableName).insert(data)
            .then((value) => value)
            .catch(error => {
                console.error(error)
            })
    }
    static async updateArticle(id, datas) {
        return knex
            .table(tableName)
            .where('idarticles', id)
            .update(datas)
            .catch(error => { console.error(error) })
    }
    static async updateArticleUnits(id, unitChange) {
        return knex
            .table(tableName)
            .where('idarticles', id)
            .update({units: knex.raw(`units + ${unitChange}`)})
            .catch(error => { console.error(error) })
    }

    static async deleteArticle(id) {

        return knex
            .table(tableName)
            .where('idarticles', id)
            .del()
            .catch(error => {
                console.error(error)
            })
    }
}
module.exports = { DB_Articles }
