import VueRouter from 'vue-router';
import Prueba from './components/prueba';
import Contacto from './components/contacto';

const routes = [
    { path: '/', name: 'home', component: Prueba },
    { path: '/Contacto', name: 'Contacto', component: Contacto },
    { path: '*', redirect: '/' }
];

const menuRoutes = [
    { title: 'home', icon: 'dashboard', route: '/' },
    { title: 'Contacto', icon: 'question_answer', route: '/Contacto' }
]

const router = new VueRouter({
    routes,
    mode: 'history'
})
module.exports = {
    menuRoutes,
    router
}