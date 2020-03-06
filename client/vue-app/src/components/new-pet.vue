<template>
  <main id="new-pet">
    <section>
      <h2></h2>
      <img alt />
      <strong>Photo source:</strong>
      <b>
        <input type="text" v-model="photo" />
      </b>
    </section>
    <section id="information">
      <span>
        <strong>Name:</strong>
        <b>
          <input type="text" v-model="name" />
        </b>
      </span>
      <span>
        <strong>Birth Date:</strong>
        <b>
          <input type="date" v-model="date" />
        </b>
      </span>
      <span>
        <strong>weight:</strong>
        <b>
          <input type="number" v-model="weight" />
        </b>
      </span>
      <span>
        <strong>kind:</strong>
        <b>
          <input type="text" v-model="kind" />
        </b>
      </span>
      <button @click="addPet()">Add</button>
    </section>
  </main>
</template>

<script>
const axios = require("axios").default
export default {
  name: "NewPet",
  props: {
    pet: Object
  },
  data() {
    return {
      photo: '',
      name: '',
      date: '',
      weight: '',
      kind: ''
    }
  },
  methods:{
    addPet(){
      axios
      .post('http://localhost:9292/graphql', {
        query: `
          mutation createPet($name:String!, $birthDate:String, $weight:Float, $profilePhoto:String, $kind:String!) {
            AddPet(name:$name, birthDate:$birthDate, weight:$weight, profilePhoto:$profilePhoto kind:$kind) { 
              name
              birthDate
              weight
              profilePhoto
              kind
            }
          }
        `,
        variables: {
          name: this.name,
          birthDate: this.date,
          weight: this.weight,
          profilePhoto: this.photo,
          kind: this.kind
        }
      })
      .then(res => console.log(res))
      .catch(err => console.log(err))
    } 
  }
}
</script>

<style scoped>
main {
  display: flex;
  flex-direction: line;
  margin-top: 4rem;
  margin: 5%;
}

section {
  width: 50%;
  height: 100%;
  display: flex;
  flex-direction: column;
}

#information {
  display: flex;
  justify-content: center;
  align-items: center;
  line-height: 2;
}

img {
  width: 100%;
  height: 100%;
}
</style> 
