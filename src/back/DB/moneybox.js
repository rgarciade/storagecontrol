const knex = require('./connection')
const tableName = 'money_box';
const DB_MoneyBoxs = class {

    static async findAllLast(last = 40) {
        return knex.select()
			.table(tableName)
			.limit(last)
			.orderBy('date_reported','desc')
			.then((value) => value)
			.catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
    }
}
module.exports = { DB_MoneyBoxs }
