import VueRouter from 'vue-router';
import Prueba from './components/prueba';
import Contacto from './components/contacto';

const routes = [
    { path: '/', component: Prueba },
    { path: '/Contacto', component: Contacto },
    { path: '*', component: Prueba }
];

const menuRoutes = [
    { title: 'Home', icon: 'dashboard' },
    { title: 'About', icon: 'question_answer' }, { title: 'Aboutt', icon: 'question_answer' }
]


module.exports = {
    menuRoutes,
    router: new VueRouter({
        routes,
        mode: 'history'
    })
}