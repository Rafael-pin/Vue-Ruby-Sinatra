import Vue from 'vue'
import Router from 'vue-router'
import PetProfile from '../components/pet-profile.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/pet/:id',
      name: 'PetProfile',
      component: PetProfile,
      props: true
    }
  ]
})