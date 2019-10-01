<template>
  <main id="page-content">
    <section>
      <h2>{{pet.name}}</h2>
      <img src="https://abrilsuperinteressante.files.wordpress.com/2018/05/filhotes-de-cachorro-alcanc3a7am-o-c3a1pice-de-fofura-com-8-semanas1.png" alt="">
    </section>
    <section id="information">
      <span><strong>Name: </strong> pet.name</span>
      <span><strong>Age: </strong> blá</span>
      <span><strong>weight: </strong> pet.weight</span>
      <span><strong>kind: </strong> pet.kind</span>
    </section>
  </main>  
</template>

<script>

  import { mapState } from 'vuex';

  export default {
    name: 'PageContent',
    computed: {
      ...mapState(['pet']),
    },
    beforeCreate() {
      // `1` is the ID of the book we want to fetch.
      this.$store.dispatch('fetchPet', 1);
    },
  }
</script>

<style scoped>

  main{
    display: flex;
    flex-direction: line;
    margin-top: 4rem;
    margin: 5%;
  }

  section{
    width: 50%;
    height: 100%;
    display: flex;
    flex-direction: column;
  }

  #information{
    display: flex;
    padding-top: 20%;
    justify-content: center;
    align-items: center;
    line-height: 2;
  }

  img{
    width: 100%;
    height: 100%;
  }
  </style> 