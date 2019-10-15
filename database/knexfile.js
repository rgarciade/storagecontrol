const connections = require('../src/back/config')
module.exports = {

  development: {
    client: 'mysql',
    connection: {
      database: connections.DB.database,
      user: connections.DB.user,
      password: connections.DB.password,
      host: connections.DB.host,
      port: connections.DB.port
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  },
  production: {
    client: 'mysql',
    connection: {
      database: connections.database,
      user: connections.user,
      password: connections.password,
      host: connections.host,
      port: connections.port
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  }
};