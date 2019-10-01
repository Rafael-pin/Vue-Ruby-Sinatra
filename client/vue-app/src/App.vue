<template>
  <div id="app">
    <link rel="stylesheet" href="https://unpkg.com/primitive-ui/dist/css/main.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <pet-profile/>
  </div>
</template>

<script>

import PetProfile from './components/pet-profile.vue'

export default {
  name: 'app',

  components: {
    PetProfile
  }
}
</script>

<style scoped>
  #app {
    display: grid;
    font-family: 'Avenir', Helvetica, Arial, sans-serif;
  }
</style>
