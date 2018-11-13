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
import Register from './views/register'
import Login from './views/login'
import search from './views/search'

Vue.use(Router)

export default new Router({
    base: process.env.BASE_URL,
    routes: [
        { path: "*",redirect: "/home/commend"},
        { path: '/home/commend', component: Home,children:[
            { path: '/home/commend',meta: {index: 0},  component: Commend},
            { path: '/home/phone',meta: {index: 1}, component: Phone},
            { path: '/home/tv',meta: {index: 2}, component: Tv},
            { path: '/home/smart',meta: {index: 3}, component: Smart},
            { path: '/home/laptop',meta: {index: 4}, component: Laptop},
            { path: '/home/products',meta: {index: 5}, component: Products},
        ]},
        { path: '/class', component: Class },
        { path: '/car', component: Car},
        { path: '/user', component: User},
        { path: '/detail/:pid', component: Detail},
        { path: '/register', component: Register},
        { path: '/login', component: Login},
        { path: '/search', component: search}
    ]
})