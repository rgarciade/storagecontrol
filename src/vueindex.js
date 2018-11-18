import Vue from 'vue';
import VueRouter from 'vue-router';

import App from './components/app';
import Menu from './components/menu';
import Prueba from './components/prueba';
import Contacto from './components/contacto';

Vue.use(VueRouter)

const routes = [
    { path: '/', component: Prueba },
    { path: '/Contacto', component: Contacto },
    { path: '*', component: Prueba }
];
const router = new VueRouter({
    routes,
    mode: 'history'
})

//charge components
Vue.component('Menu', Menu)
Vue.component('Prueba', Prueba)
Vue.component('Contacto', Contacto)
new Vue({
    el: '#app',
    router,
    render: h => h(App)
})