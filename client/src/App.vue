<template>
  <div id="app">

    <Navigation v-bind:tabs="tabs"/>
  </div>
</template>

<script>
import Navigation from "./components/Navigation";
export default {
  name: "App",
  components: {
    Navigation
  },
  data() {
    return {
      tabs: [
        {
          name: 'Home',
          href: '#'
        },
      ]
    };
  }
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>
