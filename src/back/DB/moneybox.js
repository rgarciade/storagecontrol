const knex = require('./connection')
const tableName = 'money_box';
const DB_MoneyBoxs = class {

    static async findAllLast(last = 6) {
        return knex.select()
			.table(tableName)
			.limit(last)
			.orderBy('date_reported','desc')
			.then((value) => value)
			.catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
	}

	/**
	 *
	 * @param {*} date yyyy-mm-dd
	 */
/* 	static async addNewMoneyEvent(date){
		let reportDateData = await this.findReportDate(date.date_reported)
		knex.table(tableName)
		.insert(date)
		.then(resp => resp)
		.catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
	} */

	/**
	 *
	 * @param {*} date yyyy-mm-dd
	 */
	/* async findReportDate(date){
		knex.select('date_reported')
			.table(tableName)
			.where('date_reported', '>=', `${date} 00:00:00`)
			.andWhere('date_reported', '<=', `${date} 23:59:59`)
			.then((value) => value)
			.catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
	} */
}
module.exports = { DB_MoneyBoxs }
