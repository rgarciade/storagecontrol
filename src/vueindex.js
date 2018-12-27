import Vue from 'vue';
import VueRouter from 'vue-router';
import Vuetify from 'vuetify';
import colors from 'vuetify/es5/util/colors'

import App from './app';
import Menu from './components/menu';
import Prueba from './components/prueba';
import Contacto from './components/contacto';


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
            primary: colors.red.darken1, // #E53935
            secondary: colors.red.lighten4, // #FFCDD2
            accent: colors.indigo.base // #3F51B5
        }
    })
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