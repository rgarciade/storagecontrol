exports.up = async function(knex, Promise) {
    await knex.schema.createTable('money_box', function(table) {
        table.charset('utf8');
        table.collate('utf8_general_ci');
		table.increments('id').notNullable().primary();
        table.dateTime('creation_date').notNullable().defaultTo(knex.fn.now());
        table.dateTime('date_reported').defaultTo(null);
        table.tinyint('open_box').defaultTo(0);
        table.tinyint('close_box').defaultTo(0);
        table.double('money', 11).defaultTo(0);

    })
    await knex.table('money_box').insert([{
        'date_reported': "2020-01-01 00:00:00",
        'close_box': 1,
        'money': 120
	},{
        'date_reported': "2020-01-02 00:00:00",
		'open_box': 1,
		'money': 200
    }])


}

exports.down = async function(knex, Promise) {
    await knex.schema.dropTableIfExists('money_box');
}
