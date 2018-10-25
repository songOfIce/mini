import Vue from 'vue'
import vuex from 'vuex'
import App from './App.vue'
import router from './router'
import store from './store'
import Axios from 'axios'
import common from './assets/common'
import 'mint-ui/lib/style.css'
import '../public/css/base.css'
// 引入mint-UI
import MintUI from 'mint-ui';
Vue.use(MintUI)
import Mock from './mock'

Vue.prototype.$http = Axios

Vue.config.productionTip = false
//公共js
Vue.prototype.common = common;
// 原型加入axios
// 引入jQuery
import $ from 'jquery'
Vue.prototype.$ = $
// import VueResource from 'vue-resource';
// Vue.use(VueResource);
Vue.use(vuex);
// 挂载MintUI
// Vue.component(Swipe.name, Swipe);
// Vue.component(SwipeItem.name, SwipeItem);
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
