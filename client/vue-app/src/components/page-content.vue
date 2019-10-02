<template>
  <main id="page-content">
    <section>
      <h2></h2>
      <img
        :src = "pet.profilePhoto"
        alt
      />
    </section>
    <section id="information">
      <span>
        <strong>Name:</strong>
        {{pet.name}}
      </span>
      <span>
        <strong>Age:</strong>
        {{pet.age}}
      </span>
      <span>
        <strong>weight:</strong>
        {{pet.weight}} KG
      </span>
      <span>
        <strong>kind:</strong>
        {{pet.kind}}
      </span>
    </section>
  </main>
</template>

<script>
const axios = require('axios').default;

// axios.post('http://localhost:9292/graphql',  {
//       query: "{pets { id name vaccines {name} photos {photo}}}"
    // query: `
    //       query Pet($petId: ID!) {
    //       pet(id: $petId) {
    //         id
    //         name
    //         birt_date
    //         weight
    //         profile_photo
    //         kind
    //         vaccines {
    //           name
    //           date
    //           duration
    //         }
    //         photos {
    //           photo
    //           description
    //         }
    //       }
    //     }
    //   `
//   })
//   .then(function (response) {
//     // console.log({response});
//   })
//   .catch(function (error) {
//     console.log({error});
//   });


export default {
  name: "PageContent",
  data () {
    return {
      pet: {name: "",birthDate: "", weight: 0, profilePhoto: "", kind: "", age: 0}
    }
  },
  
  methods: {

    setPet() {
      axios.post('http://localhost:9292/graphql', { query: "{pets { name age birthDate weight profilePhoto kind}}" })
        .then((response) =>
          console.log(this.pet = response.data.data.pets[0])
      );  
    },
  },

  created() {
    this.setPet();
  },
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
  padding-top: 20%;
  justify-content: center;
  align-items: center;
  line-height: 2;
}

img {
  width: 100%;
  height: 100%;
}
</style> 