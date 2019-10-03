import VueRouter from 'vue-router';
import Companysfinder from './views/companysfinder';
import Articles from './views/articles';
import Salebox from './views/salebox';
import Listings from './views/listings';
import Billing from './views/billing';
import conpanyconfiguration from './views/conpanyconfiguration';

const routes = [
    { path: '/Salebox', name: 'Salebox', component: Salebox },
    { path: '/Billing', name: 'Billing', component: Billing },
    { path: '/Listings', name: 'Listings', component: Listings },
    { path: '/Articles', name: 'Articles', component: Articles },
    { path: '/Empresas', name: 'Empresas', component: Companysfinder },
    { path: '/conpanyconfiguration', name: 'conpanyconfiguration', component: conpanyconfiguration },
    { path: '*', name: '*', component: Companysfinder }
];

const menuRoutes = [
    { title: 'Punto de venta', icon: 'local_mall', route: '/Salebox' },
    { title: 'Facturación', icon: 'attach_money', route: '/Billing' },
    { title: 'Listados', icon: 'file_copy', route: '/Listings' },
    { title: 'Articulos', icon: 'storage', route: '/Articles' },
    { title: 'Empresas', icon: 'next_week', route: '/Empresas' },
    { title: 'Configuración', icon: 'widgets', route: '/' },
]

const router = new VueRouter({
    routes
})
module.exports = {
    menuRoutes,
    router
}