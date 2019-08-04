<template>
  <div class="app">
    <div class="app_wrapper">
      <div class="wrapper_navbar" style="margin: 0 100px;">
        <h1>sheggs.me</h1>
        <div class="navbar">
          <div class="navitem" v-bind:key="tab.id" v-for="tab in tabs">
            <a :href="tab.href"><i :class="tab.icon"> </i>{{tab.name}}</a>
          </div>
        </div>
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
@import 'https://use.fontawesome.com/releases/v5.7.1/css/all.css';
i{
  font-size:1rem;
  padding: 0 0.5rem;
}
* {
  margin: 0;
  padding: 0;
  text-decoration: none;
  color: black;
}
.app_wrapper {
  margin: 0;
  position: relative;
  box-shadow: 0px 0px 1.2rem black;
}
.navbar {
  position: relative;
  min-height: 5vh;
  margin: auto;
  /*z-index: 10;*/
}
h1 {
  float: left;
}
.navitem {
  color: black;
  float: right;
  margin: auto;
  font-size: 1.2rem;
  padding: 1vh 1rem;
}
.navitem a:hover {
  color: grey;
}
</style>
