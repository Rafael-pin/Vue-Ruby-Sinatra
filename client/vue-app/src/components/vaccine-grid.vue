<template>
  <section class="vaccine-grid">
    <h3>Vaccines</h3>
    <div class="grid-container">
      <h4>Name</h4>
      <h4>Expires in</h4>
      <h4>Information</h4>
      <button class="fa fa-plus"></button>
    </div>
    <div class="grid-container" v-for="vaccine in pet.vaccines" v-bind:key="vaccine.id">
      <div class="grid-item">
        <h5>{{vaccine.name}}</h5>
      </div>
      <div class="grid-item">
        <h5>{{vaccine.duration}} days</h5>
      </div>
      <div class="grid-item">
        <h5>{{vaccine.showResults}}</h5>
      </div>
      <button class="fa fa-trash"></button>
    </div>
  </section>
</template>

<script>
export default {
  name: "VaccineGrid",
  props: {
    pet: Object
  }
};
</script>

<style scoped>
section {
  display: flex;
  flex-direction: column;
  margin: 5%;
}

div {
  display: flex;
}

.grid-container {
  display: grid;
  width: 100%;
  grid-template-columns: 30% 30% 30% 10%;
}

#grid-item {
  text-align: center;
}

button {
  background-color: rgb(74, 159, 187);
}

li {
  list-style: none;
}
</style> 
