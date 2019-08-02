<template>
  <div class="navbar">
    <h1>Sheggs.me</h1>
    <div class = "navitem" v-bind:key="tab.id" v-for="tab in tabs">
      <a>{{tab.name}}</a>
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
    *{
        margin:0;
        padding:0;
    }
    .navbar{
        width:100vw;
        float:left;
        margin:0;
        padding:0;
    }
    h1{
        float: left;
    }
    .navitem{
        position: relative;
    }
</style>
