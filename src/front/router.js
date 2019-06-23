import VueRouter from 'vue-router';
import Companysfinder from './views/companysfinder';
import Articles from './views/articles';
import conpanyconfiguration from './views/conpanyconfiguration';

const routes = [
    { path: '/Articles', name: 'Articles', component: Articles },
    { path: '/Empresas', name: 'Empresas', component: Companysfinder },

    { path: '/conpanyconfiguration', name: 'conpanyconfiguration', component: conpanyconfiguration },
    { path: '*', name: '*', component: Companysfinder }
];

const menuRoutes = [
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