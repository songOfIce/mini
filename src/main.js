import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

// 完全引入mint-UI
import MintUI from 'mint-ui'
Vue.config.productionTip = false
// 挂载MintUI
Vue.use(MintUI);

// 引入公用的css
import './assets/css/mui.css'
import 'mint-ui/lib/style.css'
import './assets/css/base.css'
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
