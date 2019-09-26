<template>
  <main id="page-content">
    <section>
      <h2>Nome do pet</h2>
      <img src="https://abrilsuperinteressante.files.wordpress.com/2018/05/filhotes-de-cachorro-alcanc3a7am-o-c3a1pice-de-fofura-com-8-semanas1.png" alt="">
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