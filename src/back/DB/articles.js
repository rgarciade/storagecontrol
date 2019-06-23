const knex = require('./connection')
const tableName = 'articles';
const DB_Articles = class {

    static async findArticles(text) {
        return knex.select()
            .table(tableName)
            .where('description', 'like', `%${text}%`)
            .orWhere('idarticles', text)
            .then((value) => value)
            .catch(error => console.log(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async findAllArticles() {
        return knex.select()
            .from(tableName)
            .then((value) => value)
            .catch(error => console.log(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
    static async insertArticle(data) {

        return knex
            .table(tableName).insert(data)
            .then((value) => value)
            .catch(error => {
                console.log(error)
            })
    }
    static async updateArticle(id, datas) {
        return knex
            .table(tableName)
            .where('idarticles', id)
            .update(datas)
            .catch(error => { console.log(error) })
    }
    static async deleteArticle(id) {

        return knex
            .table(tableName)
            .where('idarticles', id)
            .del()
            .catch(error => {
                console.log(error)
            })
    }
}
module.exports = { DB_Articles }