import VueRouter from 'vue-router';
import Companysfinder from './views/companysfinder';
import conpanyconfiguration from './views/conpanyconfiguration';

const routes = [
    /*     { path: '/', name: 'home', component: Prueba },
     { path: '*', name: '*', component: Prueba } 
    
    { path: '/Contacto', name: 'Contacto', component: Contacto },*/
    { path: '/Empresas', name: 'Empresas', component: Companysfinder },

    { path: '/conpanyconfiguration', name: 'conpanyconfiguration', component: conpanyconfiguration },
    { path: '*', name: '*', component: Companysfinder }
    //{ path: '*', name: 'conpanyconfiguration', component: conpanyconfiguration }
];

const menuRoutes = [
    { title: 'home', icon: 'dashboard', route: '/' },
    { title: 'Contacto', icon: 'question_answer', route: '/Contacto' },
    { title: 'Empresas', icon: 'next_week', route: '/Empresas' }
]

const router = new VueRouter({
    routes
})
module.exports = {
    menuRoutes,
    router
}