import Vue from 'vue'
import App from './App.vue'
import VueApollo from 'vue-apollo'
import apollo from './apolloClient'

Vue.config.productionTip = false
Vue.use(VueApollo)
Vue.prototype.$apollo = apollo

const apolloProvider = new VueApollo({ defaultClient: apollo})

new Vue({
  render: h => h(App),
  apolloProvider
}).$mount('#app')
