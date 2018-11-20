import Vue from 'vue';
import VueRouter from 'vue-router';
import App from './app';
import Menu from './components/menu';
import Prueba from './components/prueba';
import Contacto from './components/contacto';
const { menuRoutes, router } = require('./router.js')


const Appdata = { 'text': 'aa' }

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
            Appdata,
            menuRoutes
        }
    })
})