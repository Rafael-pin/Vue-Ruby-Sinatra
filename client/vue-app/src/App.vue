<template>
  <div id="app">
    <link rel="stylesheet" href="https://unpkg.com/primitive-ui/dist/css/main.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <page-header/>
    <page-content/>
    <vaccine-grid/>
  </div>
</template>

<script>
import PageHeader from './components/page-header.vue'
import PageContent from './components/page-content.vue'
import VaccineGrid from './components/vaccine-grid.vue'

export default {
  name: 'app',
  components: {
    PageHeader,
    PageContent,
    VaccineGrid
  },
  data() {
    return {
      //make return from ... GraphQL?
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
