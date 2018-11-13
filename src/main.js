import Vue from 'vue'
import vuex from 'vuex'
import App from './App.vue'
import router from './router'
import store from './store'
import Axios from 'axios'

import 'mint-ui/lib/style.css'
import '../public/css/base.css'
// 引入mint-UI
import MintUI from 'mint-ui';
Vue.use(MintUI)

Vue.prototype.$http = Axios

Vue.config.productionTip = false
Vue.use(vuex);
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
