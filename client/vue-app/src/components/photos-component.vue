  <template>
    <section class="grid-container">
      <div class="grid-item">a</div>
      <div class="grid-item">a</div>
      <div class="grid-item">a</div>
    </section>
  </template>

  <script>
    export default {
      name: 'Photos'
    }
  </script>

  <style scoped>
    .grid-container {
        display: grid;
        background-color: blue;
        grid-template-columns: auto auto auto;
        grid-column-gap: 12rem;
        grid-row-gap: 12rem;
        width: 65%;
      }

      .grid-item {
        background-color: darkcyan;
      }

    </style>