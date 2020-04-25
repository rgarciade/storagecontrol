exports.up = async function(knex, Promise) {
    await knex.schema.createTable('articles', function(table) {
        table.charset('utf8');
        table.collate('utf8_general_ci');
        table.increments('idarticles', 11).notNullable().primary();
        table.string('productid', 20).defaultTo(null);
        table.string('description', 450).defaultTo(0);
        table.integer('units', 10).defaultTo(0);
        table.double('purchase_price').defaultTo(0);
        table.double('public_price').defaultTo(0);
        table.double('media').defaultTo(0);
    })

    await knex.table('articles').insert([{
            productid: '1231',
            description: 'pantalla',
            units: '2',
            purchase_price: '22',
            public_price: '44',
            media: '0'
        },
        {
            productid: '12333',
            description: 'raton',
            units: '22',
            purchase_price: '12',
            public_price: '33',
            media: '0'
        },
        {
            productid: '12317',
            description: 'raton apple',
            units: '4',
            purchase_price: '88',
            public_price: '99',
            media: '0'
        },
        {
            productid: '12638',
            description: 'mpantalla alargada',
            units: '5',
            purchase_price: '134',
            public_price: '155',
            media: '0'
        },
        {
            productid: '12314',
            description: 'raton logitec',
            units: '4',
            purchase_price: '66',
            public_price: '77',
            media: '0'
        },
        {
            productid: '12633',
            description: 'mpantalla lg',
            units: '2',
            purchase_price: '13',
            public_price: '34',
            media: '0'
        },
        {
            productid: '12683',
            description: 'cable hdmi',
            units: '42',
            purchase_price: '13',
            public_price: '34',
            media: '0'
        }
    ])
}

exports.down = async function(knex, Promise) {
    await knex.schema.dropTableIfExists('articles');
}