import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/MainApplication'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'App',
      component: HelloWorld
    }
  ]
})
