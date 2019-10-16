exports.up = async function(knex, Promise) {
    await knex.schema.createTable('configuration', function(table) {
        table.charset('utf8');
        table.collate('utf8_general_ci');
        table.integer('vat', 11).notNullable(null);

    })



    await knex.table('configuration').insert([{
        'vat': 21,
    }])


}

exports.down = async function(knex, Promise) {
    await knex.schema.dropTableIfExists('configuration');

}