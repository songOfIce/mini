import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

// 完全引入mint-UI
// import {} from 'mint-ui'
Vue.config.productionTip = false
// 挂载MintUI

// 引入jQuery

// 引入公用的css
import './assets/css/mui.css'
import "./assets/fonts/mui.ttf"
import 'mint-ui/lib/style.css'
import './assets/css/base.css'
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
