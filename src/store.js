import Vue from 'vue'
import Vuex from 'vuex'
Vue.use(Vuex)

export default new Vuex.Store({
    state: {
        isDisplay: false,
        uid: sessionStorage['uid'],
        product: [],
        a: 1,
    },
    mutations: {
        setShow(state) {
            if (state.isDisplay) {
                state.isDisplay = false;
            } else {
                state.isDisplay = true;
            }
        },
        setProduct(state,obj){
            if(state.a == 1){
                state.a++
                state.product.push(obj) 
            }else{
                for(var i=0;i<state.product.length;i++){
                    console.log(state.product[i].id,obj.id)
                    if(state.product[i].id == obj.id)
                        
                        state.product.push(obj)
                    console.log(state.product)
                }
            }
        },
        updateProduct(state,i){
            state.product.splice(i,1)
        },
        singleIncrement(state,i){
            state.product[i].single++
            console.log(state.product[i].single)
            console.log(state.product)
        },
        singleSubtract(state,i){
            state.product[i].single--
            console.log(state.product[i].single)
            console.log(state.product)
        }
    },
    getters: {
        getShow: function (state) {
            return state.isDisplay;
        },
        getProduct: function(state){
            return state.product
        }
    }
})