exports.up = async function(knex, Promise) {
    await knex.schema.createTable('facturation_index', function(table) {
        table.charset('utf8');
        table.collate('utf8_general_ci');
        table.increments('id').notNullable().primary();
        table.integer('company_id', 11).defaultTo(0);
        table.integer('credit_card', 1).defaultTo(0);
        table.dateTime('creation_date').notNullable().defaultTo(knex.fn.now());
        table.double('price', 11).defaultTo(0);
    })
    await knex.table('facturation_index').insert([{
            'company_id': 2,
            'price': 127
        },
        {
            'price': 200
        },
        {
            'price': 24
        }
    ])


}

exports.down = async function(knex, Promise) {
    await knex.schema.dropTableIfExists('facturation_index');
}