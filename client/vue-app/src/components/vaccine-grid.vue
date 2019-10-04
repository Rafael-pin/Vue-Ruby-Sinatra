
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
        <h5>{{vaccine.duration}}</h5>
      </div>
      <div class="grid-item">
        <h5>{{vaccine.showResults}}</h5>
      </div>
      <button class="fa fa-trash"></button>
      <!-- make a v-for to loop trough vaccines and add a new grid item per vaccine -->
    </div>
  </section>
</template>

<script>
const axios = require("axios").default;
export default {
  name: "VaccineGrid",
  props: {
    pet: Object
  },

  methods: {
    createVaccine() {
      axios
        .post("http://localhost:9292/graphql", {
          query:
            "{pets { name age birthDate weight profilePhoto kind makeSound lifeStage vaccines{ id name duration date showResults} photos{photo description}}}"
        })
        .then(response => (this.pet = response.data.data.pets[this.id]));
    }
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
