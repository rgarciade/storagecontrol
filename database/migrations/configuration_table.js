exports.up = async function(knex, Promise) {
    await knex.schema.createTable('configuration', function(table) {
        table.charset('utf8');
		table.collate('utf8_general_ci');
		table.increments('id', 11).notNullable().primary();
        table.integer('vat', 11).notNullable(null);
        table.integer('banknumber', 40).defaultTo(null);
        table.string('mail', 40).defaultTo(null);
        table.string('mailpassword', 40).defaultTo(null);
        table.string('mailhost', 40).defaultTo(null);
        table.string('mailport', 40).defaultTo(null);
        table.tinyint('secure').defaultTo(0);
        table.tinyint('tls').defaultTo(0);
        table.binary('mailimg').defaultTo(null);

    })
    await knex.table('configuration').insert([{
		'vat': 21
    }])
}

exports.down = async function(knex, Promise) {
    await knex.schema.dropTableIfExists('configuration');
}
