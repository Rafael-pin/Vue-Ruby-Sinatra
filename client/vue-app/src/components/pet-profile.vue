<template>
  <main>
    <page-header/>
    <page-content/>
    <vaccine-grid/>
  </main>
</template>

<script>

import PageHeader from './components/page-header.vue'
import PageContent from './components/page-content.vue'
import VaccineGrid from './components/vaccine-grid.vue'

  export default {
    name: 'PetProfile',
    components: {
    PageHeader,
    PageContent,
    VaccineGrid
    },
  }
</script>

<style scoped>

</style>