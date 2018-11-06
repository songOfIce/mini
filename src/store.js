import Vue from 'vue'
import Vuex from 'vuex'
Vue.use(Vuex)

export default new Vuex.Store({
    state: {
        isDisplay: false,
        uid: sessionStorage['uid'],
        product: '',
        jump: false
    },
    mutations: {
        // 显示隐藏
        setShow(state) {
            if (state.isDisplay) {
                state.isDisplay = false;
            } else {
                state.isDisplay = true;
            }
        },
        // 共享商品数据
        setProduct(state,obj){
            state.product = obj
        },
        // 更新商品数据
        updateProduct(state,i){
            state.product.splice(i,1)
        },
        // 商品个数增加或减少
        single(state,obj){
            state.product[obj.i].single = obj.s
        },
        // 用户购买商品状态
        isbuy(state,i){
            state.product[i].isbuy = !state.product[i].isbuy
        }
    },
    getters: {
        getShow: function (state) {
            return state.isDisplay;
        },
        //获取商品数据
        getProduct: function(state){
            return state.product
        },
        getjump: function(state){
            return state.jump
        },
        getuid: function(state){
            return state.uid
        }
    }
})