import Vue from 'vue'
import App from './App.vue'
import VueApollo from 'vue-apollo'
import apolloClient from './apolloClient'
// import { createProvider } from './vue-apollo'

Vue.config.productionTip = false
Vue.use(VueApollo)
Vue.prototype.$apollo = apolloClient

const apolloProvider = new VueApollo({
  defaultClient: apolloClient,
})

new Vue({
  render: h => h(App),
  apolloProvider
}).$mount('#app')
