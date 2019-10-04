<template>
  <div id="pet-profile">
    <page-header />
    <new-pet v-if="pet == null"/>
    <div v-else >
      <page-content :pet="pet"/>
      <vaccine-grid :pet="pet"/>
    </div>
  </div>
</template>

<script>
import PageHeader from "./page-header.vue"
import PageContent from "./page-content.vue"
import VaccineGrid from "./vaccine-grid.vue"
import NewPet from "./new-pet.vue"

const axios = require("axios").default;

export default {
  name: "PetProfle",
  components: {
    PageHeader,
    PageContent,
    VaccineGrid,
    NewPet
  },
  watch: {
    '$route.params.id': function (id) {
      this.setPet();
    }
  },
  created() {
    this.setPet()
  },
  methods: {
    setPet() {
      axios.post('http://localhost:9292/graphql', { query: "{pets { name age birthDate weight profilePhoto kind makeSound lifeStage vaccines{ id name duration date showResults} photos{photo description}}}" })
        .then((response) =>
          this.pet = response.data.data.pets[this.id]
        )
    }
  },
  props: {
    id: String
  },

  data() {
    return {
      pet: { },
      updatePet: false
    }
  }
};
</script>

