<template>
  <main id="page-content">
    <section>
    <div><img src="" alt=""></div>
    <h2>Nome do pet</h2>
    </section>
    <section id="information">
      <span><strong>Name: </strong> blá</span>
      <span><strong>Age: </strong> blá</span>
      <span><strong>weight: </strong> blá</span>
      <span><strong>kind: </strong> blá</span>
    </section>
  </main>  
</template>

<script>
  export default {
    name: 'PageContent'
  }
</script>

<style scoped>

  main{
    width: 100%;
    height: 30vw;
    display: flex;
    margin-top: 4rem;
    margin: 5%;
  }

  section{
    width: 50%;
    height: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  #information{
    display: flex;
    align-items: flex-start;
    line-height: 3;
  }

  div{
    width: 80%;
    height: 90%;
  }
  </style> 