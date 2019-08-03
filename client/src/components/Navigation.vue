<template>
  <div class="app">
    <h1>Sheggs.me</h1>

    <div class="navbar">
      <div class="navitem" v-bind:key="tab.id" v-for="tab in tabs">
        <a :href = "tab.href">{{tab.name}}</a>
      </div>
    </div>
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
* {
  margin: 0;
  padding: 0;
}
.navbar {
 position: relative;
    min-height: 5vh;
    width:100vw;
    margin:auto ;
    z-index: 10;
}
h1 {
  float: left;
}
.navitem {
    color:black;
    float:right;
    margin: auto;
    font-size: 1.2rem;
    padding: 0 1rem;
    margin:1.25vh 0;
}
</style>
