import Vue from 'vue';
import VueRouter from 'vue-router';
import Vuetify from 'vuetify';
import colors from 'vuetify/es5/util/colors'

import App from './app';
import Menu from './components/menu';
import Prueba from './components/prueba';
import Contacto from './components/contacto';
import Progress from './components/progress';


const { menuRoutes, router } = require('./router.js')



let Appdata = { 'text': 'aa', id: 1 }
let id = 1;
/* setTimeout(function() {
    Appdata.id = 12;
    Appdata.text = 'fff'
}, 2000); */
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