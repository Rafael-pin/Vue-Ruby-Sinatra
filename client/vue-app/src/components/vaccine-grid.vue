<template>
  <footer id="vaccine-grid">
    <h3>Vaccines</h3>
    <div id="grid-container">
      <h4>Name</h4>
      <h4>Expires in</h4>
      <div class="grid-item">name</div>
      <div class="grid-item">date</div>
    </div>
  </footer>  
</template>

<script>
  export default {
    name: 'VaccineGrid'
  }
</script>

<style scoped>
  footer{
    display: flex;
    flex-direction: column;
    margin: 5%;
  }

  div{
    display: flex;
    justify-content: space-around;
  }

  #grid-container {
    display: grid;
    grid-template-columns: auto auto;
  }

  .grid-item{
    text-align: center;
  }

</style> 