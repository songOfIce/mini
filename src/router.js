import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Class from './views/Class.vue'
import Car from './views/Car.vue'
import User from './views/User.vue'

// 引入组件
import Commend from './components/home/Commend.vue'
import Phone from './components/home/Phone.vue'
import Laptop from './components/home/Laptop.vue'
import Products from './components/home/Products.vue'
import Smart from './components/home/Smart.vue'
import Tv from './components/home/Tv.vue'

Vue.use(Router)

export default new Router({
    mode: 'history',
    base: process.env.BASE_URL,
    routes: [
        { path: "*",redirect: "/home"},
        { path: '/home', component: Home,children:[
            { path: 'commend', component: Commend},
            { path: 'phone',component: Phone},
            { path: 'laptop',component: Laptop},
            { path: 'products',component: Products},
            { path: 'smart',component: Smart},
            { path: 'tv',component: Tv}
        ]},
        { path: '/class', component: Class },
        { path: '/car', component: Car},
        { path: '/user', component: User},

    ]
})