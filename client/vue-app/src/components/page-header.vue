<template>
  <header id="page-header">
    <section id="title"><h1>Pet-Profile</h1></section>
    <a>New pet</a>
    <a>Edit pet</a>
    <a>Delete pet</a>
    <section id="search">
      <form>
        <input type="text" id="query" placeholder="Search:">
        <select id="choose">
          <option value="none" selected>Filter</option>
          <option value="dog">Dog</option>
          <option value="cat">Cat</option>
          <option value="bird">Bird</option>
          <option value="other">Other</option>
        </select>
         <input type="submit" value="Submit">
      </form>
    </section>
  </header>
</template>

<script>
  export default {
    name: 'PageHeader'
  }
</script>

<style scoped>

  #page-header{
    width:100%;
    height:7vw;
    background-color: rgb(86, 153, 18);
    display: flex;
    justify-content: space-between;
    align-items: center;
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
  }
    
</style>