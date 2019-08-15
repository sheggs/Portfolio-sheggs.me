<template>
  <div class="app">
    <section id = "projects" class = "projects">
        <div class="uppercontainer">
         <h1 class = "project_title">Projects</h1>
        </div>
        <div class="cardcontainer">
            <div class="card_outline">

            </div>
        </div>
    </section>
  </div>
</template>

<script>
export default {
  name: "Navigation",
  props: ["tabs"],
  data() {
    return {
      msg: "Welcome to Your Vue.js App"
    };
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
@import 'https://use.fontawesome.com/releases/v5.7.1/css/all.css';
.projects{
    width:100vw;
    height: 90vh;
}
.card_outline{
    min-width: 5vw;
    min-height: 10vh;
  border: 2px solid #73AD21;

}
</style>
