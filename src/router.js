import VueRouter from 'vue-router';
import Prueba from './components/prueba';
import Contacto from './components/contacto';

const routes = [
    { path: '/', component: Prueba },
    { path: '/Contacto', component: Contacto },
    { path: '*', component: Prueba }
];

const menuRoutes = [{
    name: 'dasboars',
    icon: 'flaticon-bell',
    subMenu: [
        { name: 'sss', icon: 'flaticon-file-1' },
        { name: 'dff', icon: 'flaticon-file-1' }
    ]
}, {
    name: 'Layout',
    icon: 'flaticon-file-1',
    subMenu: [
        { name: 'aaa', icon: 'flaticon-settings-2' },
        { name: 'dfaaaf', icon: 'flaticon-settings-2' }
    ]
}, {
    name: 'Graphs',
    icon: 'flaticon-settings-2',

}]


module.exports = {
    menuRoutes,
    router: new VueRouter({
        routes,
        mode: 'history'
    })
}