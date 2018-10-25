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
import Detail from './views/detail.vue'
Vue.use(Router)

export default new Router({
    mode: 'history',
    base: process.env.BASE_URL,
    routes: [
        { path: "*",redirect: "/home"},
        { path: '/home', component: Home,children:[
            { path: 'commend',meta: {index: 0},  component: Commend},
            { path: 'phone',meta: {index: 1}, component: Phone},
            { path: 'tv',meta: {index: 2}, component: Tv},
            { path: 'smart',meta: {index: 3}, component: Smart},
            { path: 'laptop',meta: {index: 4}, component: Laptop},
            { path: 'products',meta: {index: 5}, component: Products},
        ]},
        { path: '/class', component: Class },
        { path: '/car', component: Car},
        { path: '/user', component: User},
        { path: '/detail', component: Detail}

    ]
})