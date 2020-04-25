
exports.up = async function (knex, Promise) {
    await knex.schema.createTable('companys', function (table) {
        table.charset('utf8');
        table.collate('utf8_general_ci');
        table.increments('id').notNullable().primary();
        table.string('cif', 45).defaultTo(null);
        table.string('name', 45).defaultTo(null);
        table.string('contact', 45).defaultTo(null);
        table.string('location', 45).defaultTo(null);
        table.string('telephone', 45).defaultTo(null);
        table.string('email', 45).defaultTo(null);
        table.string('street', 255).defaultTo(null);
        table.string('city', 45).defaultTo(null);
        table.string('province', 45).defaultTo(null);
        table.string('cta', 45).defaultTo(null);
        table.string('state', 45).defaultTo(null);
        table.string('postalcode', 45).defaultTo(null);
        table.string('banck', 45).defaultTo(null);
        table.string('mobile', 45).defaultTo(null);
        table.string('notas', 510).defaultTo(null);
    })


    await knex.table('companys').insert([
        {
            cif: '0000000',
            name: 'Varios',
            contact: 'Varios',
            location: '',
            telephone: '',
            email: '',
            street: '',
            city: '',
            province: '',
            state: '',
            postalcode: '',
            banck: '',
            mobile: '',
            notas: ''
        },
        {
            cif: '53619624t',
            name: 'empresiña',
            contact: 'luis',
            location: 'fff',
            telephone: '656543456',
            email: 'rgarcia@mm.com',
            street: 'calleee',
            city: 'madrid',
            province: 'madrid',
            state: 'madrid',
            postalcode: '28231',
            banck: 'BN12414',
            mobile: '45454545454',
            notas: 'sadasdasdasd'
        },
        {
            cif: '33619622t',
            name: 'LA Empresa',
            contact: 'jose',
            location: 'ggg',
            telephone: '656511156',
            email: 'eso@mm.com',
            street: 'calleee1',
            city: 'madrid',
            province: 'madrid',
            state: 'madrid',
            postalcode: '28231',
            banck: 'BN12411',
            mobile: '45454545454',
            notas: 'fafsafa'
        },
        {
            cif: '23619612t',
            name: 'Tu Empresa',
            contact: 'ana',
            location: 'ggg',
            telephone: '656511156',
            email: 'fff@mm.com',
            street: 'calleee2',
            city: 'madrid',
            province: 'madrid',
            state: 'madrid',
            postalcode: '28231',
            banck: 'BN12413',
            mobile: '45454545454',
            notas: 'fafsafa'
        }
    ])


}

exports.down = async function (knex, Promise) {
    await knex.schema.dropTableIfExists('companys');

}


