import Vue from 'vue'
import Vuex from 'vuex'
Vue.use(Vuex)

export default new Vuex.Store({
    state: {
        isDisplay: false,
        products: []
    },
    mutations: {
        setShow(state) {
            if (state.isDisplay) {
                state.isDisplay = false;
            } else {
                state.isDisplay = true;
            }
        },
        addProduct(state,pid) {
            state.products.push(pid);
            console.log(state.products)
        }
    },
    getters: {
        getShow: function (state) {
            return state.isDisplay;
        },
        getProducts: function(state){
            return state.products
        }
    }
})