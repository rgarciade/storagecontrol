
exports.up = async function (knex, Promise) {
    await knex.schema.createTable('contacts', function (table) {
        table.charset('utf8');
        table.collate('utf8_general_ci');
        table.increments('idcontacts').notNullable().primary();
        table.integer('idcompany', 11).notNullable(null);
        table.string('email', 45).defaultTo(null);
        table.string('name', 45).defaultTo(null);
        table.string('location', 45).defaultTo(null);
        table.string('telephone', 45).defaultTo(null);
        table.integer('facturacion', 11).defaultTo(0);

    })



    await knex.table('contacts').insert([
        {
            'idcompany': 2,
            'email': 'caca@#g',
            'name': 'luis',
            'location': 'apartaa',
            'telephone': 'NULL',
            'facturacion': '1421241',
        },
        {
            'idcompany': 1,
            'email': 'awawaw@wwg.com',
            'name': 'pepon',
            'location': 'callejuela',
            'telephone': 888888888,
            'facturacion': '14241',
        }
    ])


}

exports.down = async function (knex, Promise) {
    await knex.schema.dropTableIfExists('contacts');

}


