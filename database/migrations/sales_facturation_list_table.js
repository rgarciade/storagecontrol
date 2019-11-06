exports.up = async function(knex, Promise) {
    await knex.schema.createTable('sales_facturation_list', function(table) {
        table.charset('utf8');
        table.collate('utf8_general_ci');
        table.increments('id').notNullable().primary();
        table.integer('facturationId', 11).defaultTo(0);
        table.integer('saleId', 11).defaultTo(0);
        table.dateTime('creation_date').notNullable().defaultTo(knex.fn.now());
        table.integer('articleId', 11).notNullable();
        table.double('price', 11).notNullable();
        table.integer('units', 11).notNullable();
    })
    await knex.table('sales_facturation_list').insert([
        {
            'facturationId': 1,
            'articleId': 1,
            'price':22.4,
            'units':1
        },
        {
            'facturationId': 2,
            'articleId': 2,
            'price':44.1,
            'units':2
        },
        {
            'saleId': 1,
            'articleId': 3,
            'price':55.6,
            'units':2
        },
        {
            'saleId': 1,
            'articleId': 1,
            'price':22.6,
            'units':1
        }
    ])


}

exports.down = async function(knex, Promise) {
    await knex.schema.dropTableIfExists('sales_facturation_list');
}