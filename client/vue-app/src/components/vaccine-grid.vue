<template>
  <section id="vaccine-grid">
    <h3>Vaccines</h3>
    <div id="grid-container">
      <h4>Name</h4>
      <h4>Expires in</h4>
      <div class="grid-item">name</div>
      <div class="grid-item">date</div>
      <!-- make a v-for to loop trough vaccines and add a new grid item per vaccine -->
    </div>
  </section>  
</template>

<script>
  export default {
    name: 'VaccineGrid'
  }
</script>

<style scoped>
  section{
    display: flex;
    flex-direction: column;
    margin: 5%;
  }

  div{
    display: flex;
  }

  #grid-container {
    display: grid;
    width: 100%;
    grid-template-columns: auto auto;
  }

  .grid-item{
    text-align: center;
  }

</style> 