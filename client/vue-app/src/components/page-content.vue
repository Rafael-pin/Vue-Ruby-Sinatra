<template>
  <main id="page-content">
    <section>
      <h2></h2>
      <img :src="pet.profilePhoto" alt />
    </section>
    <section id="information">
      <span>
        <strong>Name:</strong>
        <b>{{pet.name}}</b>
      </span>
      <span>
        <strong>Age:</strong>
        <b>{{pet.age}}</b>
      </span>
      <span>
        <strong>weight:</strong>
        <b>{{pet.weight}}</b>
      </span>
      <span>
        <strong>kind:</strong>
        <b>{{pet.kind}}</b>
      </span>
      <span>
        <strong>Sound:</strong>
        <b>{{pet.makeSound}}</b>
      </span>
      <span>
        <strong>Life Stage:</strong>
        <b>{{pet.lifeStage}}</b>
      </span>
    </section>
  </main>
</template>

  <script>
export default {
  name: "PageContent",
  props: {
    pet: Object,
  },
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
