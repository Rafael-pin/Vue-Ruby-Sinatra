<template>
  <header id="page-header">
    <section id="title"><h1>Pet-Profile</h1></section>
    <div class="icon-bar">
      <a class="active" href="#"><i class="fa fa-plus"></i></a>
      <a href="#"><i class="fa fa-trash"></i></a> 
      <a class="active" href="#"><i class="fa fa-edit"></i></a>
    </div>
    <form>
      <input type="text" id="query" placeholder="Search:">
      <select id="choose">
        <option value="none" selected>Filter</option>
        <option value="dog">Dog</option>
        <option value="cat">Cat</option>
        <option value="bird">Bird</option>
        <option value="other">Other</option>
      </select>
        <i class="fa fa-search" type="submit" value="Submit"/>
    </form>
  </header>
</template>

<script>
  export default {
    name: 'PageHeader'
  }
</script>

<style scoped>

  #page-header{
    display: flex;
    justify-content: space-evenly;
    flex-wrap: wrap;
    align-items: center;
    background-color: rgb(217, 231, 243);
  }

  a:hover{
    cursor: pointer;
  }

  select:hover{
    cursor: pointer;
  }

  form{
    display: flex;
    height: 100%;
    align-items: center;
  }

  #choose{
    width: 30%;
    background-color: white;
  }

  #query{
    background-color: white;
    height: 45%;
    width: 55%;
  }

  div{
    width: 15%;
    display: flex;
    justify-content: space-between;
  }
</style>