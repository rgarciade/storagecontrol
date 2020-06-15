const knex = require('./connection')

const DB_Configuration = class {

    static async findConfigurationById(id) {
        return knex.select()
            .table('configuration')
            .where('id', id)
            .then((value) => value)
            .catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))

    }

    static async updateConfigurationById(id, datas) {
        return knex
            .table('configuration')
            .where('id', id)
            .update(datas)

    }
    static async deleteConfigurationById(id) {
        return knex
            .table('configuration')
            .where('id', id)
            .del()
            .catch(error => {
                console.error(error)
            })
	}
	static async findPrincipalConfiguration() {
		return knex.select()
            .table('configuration')
            .where('id', 1)
            .then((value) => value)
            .catch(error => console.error(error.errno === 'ECONNREFUSED' ? 'connection error' : ''))
	}
	static async updatePrincipalConfiguration() {
		return knex
		.table('configuration')
		.where('id', 1)
		.update(datas)
	}
	static async deletePrincipalConfiguration() {
		return knex
		.table('configuration')
		.where('id', 1)
		.del()
		.catch(error => {
			console.error(error)
		})
	}

}
module.exports = { DB_Configuration }
