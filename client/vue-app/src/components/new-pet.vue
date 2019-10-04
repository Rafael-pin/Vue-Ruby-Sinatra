<template>
  <main id="new-pet">
    <section>
      <h2></h2>
      <img  alt />
      <strong>Photo source:</strong>
        <b>
          <input type="text"   />
        </b>
    </section>
    <section id="information">
      <span>
        <strong>Name:</strong>
        <b>
          <input type="text"   />
        </b>
      </span>
      <span>
        <strong>Age:</strong>
        <b>
          <input type="text"   />
        </b>
      </span>
      <span>
        <strong>weight:</strong>
        <b>
          <input type="text"   />
        </b>
      </span>
      <span>
        <strong>kind:</strong>
        <b>
          <input type="text" />
        </b>
      </span>
      <span>
        <strong>Sound:</strong>
        <b>
          <input type="text" name id />
        </b>
      </span>
      <span>
        <strong>Life Stage:</strong>
        <b>
          <input type="text" name id />
        </b>
      </span>
    </section>
  </main>
</template>

  <script>
export default {
  name: "NewPet",
  props: {
    pet: Object,
  }
};
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
