<template>
  <main id="page-content">
    <section>
      <h2></h2>
      <img
        src="https://abrilsuperinteressante.files.wordpress.com/2018/05/filhotes-de-cachorro-alcanc3a7am-o-c3a1pice-de-fofura-com-8-semanas1.png"
        alt
      />
    </section>
    <section id="information">
      <span>
        <strong>Name:</strong>
        {{this.pet.name}}
      </span>
      <span>
        <strong>Age:</strong> blá
      </span>
      <span>
        <strong>weight:</strong> weight
      </span>
      <span>
        <strong>kind:</strong> kind
      </span>
    </section>
  </main>
</template>

<script>
const axios = require('axios').default;

// axios.post('http://localhost:9292/graphql',  {
//       query: "{pets { id name vaccines {name} photos {photo}}}"
//     // query: `
//     //       query Pet($petId: ID!) {
//     //       pet(id: $petId) {
//     //         id
//     //         name
//     //         birt_date
//     //         weight
//     //         profile_photo
//     //         kind
//     //         vaccines {
//     //           name
//     //           date
//     //           duration
//     //         }
//     //         photos {
//     //           photo
//     //           description
//     //         }
//     //       }
//     //     }
//     //   `
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
      pet: {name}
    }
  },
  
  methods: {

    setPet() {
      axios.post('http://localhost:9292/graphql', { query: "{pets { id name vaccines {name} photos {photo}}}" })
        .then((response) =>
          this.pet.name = response.data.data.pets[0].name
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