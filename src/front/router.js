import VueRouter from 'vue-router';
import Companysfinder from './views/companysfinder';
import Articles from './views/articles';
import Salebox from './views/salebox';
import tickets from './views/tickets';
import Billing from './views/billing';
import Moneybox from './views/moneybox';
import conpanyconfiguration from './views/conpanyconfiguration';

const routes = [
    { path: '/Salebox', name: 'Salebox', component: Salebox },
    { path: '/Billing', name: 'Billing', component: Billing },
    { path: '/tickets', name: 'tickets', component: tickets },
    { path: '/Articles', name: 'Articles', component: Articles },
    { path: '/Empresas', name: 'Empresas', component: Companysfinder },
    { path: '/conpanyconfiguration', name: 'conpanyconfiguration', component: conpanyconfiguration },
    { path: '/Moneybox', name: 'Moneybox', component: Moneybox },
    { path: '*', name: '*', component: Salebox }
];

const menuRoutes = [
    { title: 'Punto de venta', icon: 'local_mall', route: '/Salebox' },
    { title: 'Facturación', icon: 'attach_money', route: '/Billing' },
    { title: 'tickets', icon: 'file_copy', route: '/tickets' },
    { title: 'Articulos', icon: 'storage', route: '/Articles' },
    { title: 'Empresas', icon: 'next_week', route: '/Empresas' },
    { title: 'Moneybox', icon: '', route: '/Moneybox' },
    { title: 'Configuración', icon: 'widgets', route: '/' },
]

const router = new VueRouter({
    routes
})
module.exports = {
    menuRoutes,
    router
}
