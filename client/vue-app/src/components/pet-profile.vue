<template>
  <div id="pet-profile">
    <page-header/>
    <page-content/>
    <vaccine-grid/>
  </div>
</template>

<script>

// import gql from 'graphql-tag'
import PageHeader from './page-header.vue'
import PageContent from './page-content.vue'
import VaccineGrid from './vaccine-grid.vue'

export default {
  name: 'PetProfle',
  components: {
    PageHeader,
    PageContent,
    VaccineGrid,
  },
  data() {
    return {
      pets: null
    }
  },
}
</script>