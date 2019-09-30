<template>
  <div id="app">
    <link rel="stylesheet" href="https://unpkg.com/primitive-ui/dist/css/main.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <page-header/>
    <page-content/>
    <vaccine-grid/>
    {{ pets }}
  </div>
</template>

<script>
import gql   from 'graphql-tag'
import PageHeader from './components/page-header.vue'
import PageContent from './components/page-content.vue'
import VaccineGrid from './components/vaccine-grid.vue'


export default {
  name: 'app',
  // async created() {
  //   debugger;
  //   const response = await this.$apollo.query({
  //     query: gql`{ pets { name } }`
  //   });
  //   debugger;
  //   // eslint-disable-next-line no-console
  //   console.log(response.data.pets);
  // },
  apollo:{
    pets: {
      query: gql`query pets{ pets { name } }`
    }
  },
  components: {
    PageHeader,
    PageContent,
    VaccineGrid,
    // PetProfile
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
