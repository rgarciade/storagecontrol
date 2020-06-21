const knex = require('./connection')
const tableName = 'money_box';
const DB_MoneyBoxs = class {

    static async findAllLast(last = 6) {
        return knex.select()
			.table(tableName)
			.limit(last)
			.orderBy('creation_date','desc')
			.then((value) => value)
			.catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
	}

	/**
	 *
	 * @param {*} data
	 * 		date_reported: yyyy-mm-dd hh:mm:ss
	 *      open_box : boolean
	 *      close_box : boolean
	 *      money : float
	 * }
	 */
 	static async addNewMoneyEvent(data){
		knex.table(tableName)
		.insert(data)
		.then(resp => resp)
		.catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
	}
}
module.exports = { DB_MoneyBoxs }
