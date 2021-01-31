exports.up = async function(knex, Promise) {
    await knex.schema.createTable('sales_index', function(table) {
        table.charset('utf8');
        table.collate('utf8_general_ci');
        table.increments('id').notNullable().primary();
        table.integer('credit_card', 1).defaultTo(0);
        table.dateTime('creation_date').notNullable().defaultTo(knex.fn.now());
		table.double('price', 11).defaultTo(0);
		table.integer('vat', 11).defaultTo(21);
		table.double('paid', 11).defaultTo(0);
    })
    await knex.table('sales_index').insert([{
            'price': 127.5
        },
        {
            'price': 255
        },
        {
            'price': 24
        }
    ])


}

exports.down = async function(knex, Promise) {
    await knex.schema.dropTableIfExists('sales_index');
}
