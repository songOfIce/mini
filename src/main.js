import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Axios from 'axios'
import Mock from './mock'
// 引入公用的css
import 'mint-ui/lib/style.css'
import './lib/mui/css/mui.css'
import "./lib/mui/fonts/mui.ttf"
import './lib/mui/css/icons-extra.css'
Vue.config.productionTip = false
// 原型加入axios
Vue.prototype.$http = Axios
// 引入jQuery
import $ from 'jquery'
window.$ = $
// import VueResource from 'vue-resource';
// Vue.use(VueResource);
// 引入mint-UI
import MintUI from 'mint-ui';
Vue.use(MintUI)
// 挂载MintUI
// Vue.component(Swipe.name, Swipe);
// Vue.component(SwipeItem.name, SwipeItem);
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
