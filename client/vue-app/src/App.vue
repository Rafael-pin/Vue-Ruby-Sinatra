<template>
  <div id="app">
    <link rel="stylesheet" href="https://unpkg.com/primitive-ui/dist/css/main.css" />
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
  }
}
</script>

<style scoped>
  #app {
    height: 100%;
    width: 100%;
    display: flex;
    flex-direction: column;
    font-family: 'Avenir', Helvetica, Arial, sans-serif;
  }
</style>
