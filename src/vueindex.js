import Vue from 'vue';
import VueRouter from 'vue-router';
import Vuetify from 'vuetify';
import colors from 'vuetify/es5/util/colors'

import App from './views/app';
import Menu from './components/menu';
import Prueba from './components/prueba';
import Contacto from './components/contacto';
import Progress from './components/progress';

const { router } = require('./router.js')
import store from "./store"


Vue.use(VueRouter)
Vue.use(Vuetify, {
        iconfont: 'md',
        theme: {
            primary: "#37474F",
            secondary: "#424242",
            accent: "#F57C00",
            error: "#FF5252",
            warning: "#FDD835",
            info: "#82B1FF",
            success: "#81C784"
        }
    })
    //charge components
Vue.component('Menu', Menu)
Vue.component('Prueba', Prueba)
Vue.component('Contacto', Contacto)
Vue.component('Progress', Progress)
console.log('router', router)
new Vue({
    el: '#app',
    store,
    router,
    render: h => h(App)
})