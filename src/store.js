import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
      isDisplay: false
  },
  mutations: {
      setShow(state){
          if(state.isDisplay){
              state.isDisplay = false;
          }else{
              state.isDisplay = true;
          }
      }
  },
  getters: {
      getShow: function(state){
          return state.isDisplay;
      }
  }
})
