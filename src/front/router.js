import VueRouter from 'vue-router';
import Prueba from './components/prueba';
import Contacto from './components/contacto';
import Companysfinder from './views/companysfinder';

const routes = [
    { path: '/', name: 'home', component: Prueba },
    { path: '/Contacto', name: 'Contacto', component: Contacto },
    { path: '/Empresas', name: 'Empresas', component: Companysfinder },
    { path: '*', redirect: '/' }
];

const menuRoutes = [
    { title: 'home', icon: 'dashboard', route: '/' },
    { title: 'Contacto', icon: 'question_answer', route: '/Contacto' },
    { title: 'Empresas', icon: 'next_week', route: '/Empresas' }
]

const router = new VueRouter({
    routes,
    mode: 'history'
})
module.exports = {
    menuRoutes,
    router
}