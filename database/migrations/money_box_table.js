exports.up = async function(knex, Promise) {
    await knex.schema.createTable('money_box', function(table) {
        table.charset('utf8');
        table.collate('utf8_general_ci');
		table.increments('id').notNullable().primary();
        table.dateTime('creation_date').notNullable().defaultTo(knex.fn.now());
        table.dateTime('open_date').defaultTo(null);
        table.dateTime('closed_date').defaultTo(null);
        table.double('money', 11).defaultTo(0);

    })
    await knex.table('money_box').insert([{
        'creation_date': "2020-01-01 00:00:00",
        'closed_date': "2020-01-01 00:00:00",
        'money': 120
	},{
        'creation_date': "2020-01-02 00:00:00",
		'open_date': "2020-01-01 00:00:00",
		'money': 200

    }])


}

exports.down = async function(knex, Promise) {
    await knex.schema.dropTableIfExists('money_box');
}
