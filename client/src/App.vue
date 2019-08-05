
<template>
  <div id="app">
    <MainApplication />
    
  </div>
  
</template>

<script>
import MainApplication from "./components/MainApplication";


export default {
  name: "App",
  components: {
    MainApplication,
  },
  data() {
    return {
      tabs: [
        {
          name: "Github",
          href: "#",
          icon: "fab fa-github"
        },
        {
          name: "Projects",
          href: "#",
          icon: "fas fa-project-diagram"
        },
        {
          name: "Home",
          href: "#",
          icon: "fas fa-home"
        }
      ]
    };
  }
};
</script>

<style>
@import 'https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr';

* {
  margin: 0;
  padding: 0;
}
#app {
  font-family: Helvetica, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>
