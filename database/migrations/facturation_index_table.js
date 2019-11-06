exports.up = async function(knex, Promise) {
    await knex.schema.createTable('facturation_index', function(table) {
        table.charset('utf8');
        table.collate('utf8_general_ci');
        table.increments('id').notNullable().primary();
        table.integer('companyId', 11).defaultTo(0);
        table.string('email', 45).defaultTo(null);
        table.dateTime('creation_date').notNullable().defaultTo(knex.fn.now());
        table.double('price', 11).defaultTo(0);
    })
    await knex.table('facturation_index').insert([{
            'companyId': 2,
            'email': 'caca@#g',
            'price': 127
        },
        {
            'email': 'caca@#g',
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