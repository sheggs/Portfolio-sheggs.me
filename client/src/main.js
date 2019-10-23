// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import req from './services/sheggs_req'
import axios from 'axios'
Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  data(){
    return {
      json_projects: null
    }
  },

  components: { App },
 
  template: '<App/>'
})
