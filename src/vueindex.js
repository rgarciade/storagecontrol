import Vue from 'vue';
import VueRouter from 'vue-router';
import App from './app';
import Menu from './components/menu';
import Prueba from './components/prueba';
import Contacto from './components/contacto';

const { menuRoutes, router } = require('./router.js')



let Appdata = { 'text': 'aa', id: 1 }
let id = 1;
setTimeout(function() {
    Appdata.id = 12;
    Appdata.text = 'fff'
}, 2000);
Vue.use(VueRouter)

//charge components
Vue.component('Menu', Menu)
Vue.component('Prueba', Prueba)
Vue.component('Contacto', Contacto)
new Vue({
    el: '#app',
    router,
    render: h => h(App, {
        props: {
            data: Appdata,
            menuRoutes
        }
    })
})