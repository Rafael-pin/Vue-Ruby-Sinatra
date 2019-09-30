<template>
  <div id="app">
    <link rel="stylesheet" href="https://unpkg.com/primitive-ui/dist/css/main.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <pet-profile/>
  </div>
</template>

<script>

import gql from 'graphql-tag'
import PetProfile from './components/pet-profile.vue'
import PageHeader from './components/page-header.vue'
import PageContent from './components/page-content.vue'
import VaccineGrid from './components/vaccine-grid.vue'


export default {
  name: 'app',
  
  components: {
    PetProfile
  },
  data() {
    return {
      pets: null
    }
  },
}
</script>

<style scoped>
  #app {
    display: grid;
    font-family: 'Avenir', Helvetica, Arial, sans-serif;
  }
</style>
