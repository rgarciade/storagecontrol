const { DB } = require('../../config')
let knex = require('knex')({
    client: 'mysql',
    connection: {
        host: DB.host,
        user: DB.user,
        password: DB.password,
        database: DB.database
    },
    warn(message) {
        console.log(message)
    },
    error(message) {
        console.log(message)
    },
})
module.exports = knex