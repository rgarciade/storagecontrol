exports.up = async function(knex, Promise) {
    await knex.schema.createTable('configuration', function(table) {
        table.charset('utf8');
        table.collate('utf8_general_ci');
        table.integer('vat', 11).notNullable(null);
        table.string('mail', 40).notNullable(null);
        table.string('mailpassword', 40).notNullable(null);
        table.string('mailhost', 40).notNullable(null);
        table.string('mailport', 40).notNullable(null);
        table.tinyint('secure', 40).notNullable(null);

    })



    await knex.table('configuration').insert([{
        'vat': 21,
    }])


}

exports.down = async function(knex, Promise) {
    await knex.schema.dropTableIfExists('configuration');

}
