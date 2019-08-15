<template>
  <div class="app">
      <Navigation v-bind:tabs="tabs" />
      <AboutMe v-bind:icons="icons" v-bind:links="links"/>
      <Projects_Section />
  </div>
</template>

<script>
import Navigation from "./subcomponents/Navigation";
import AboutMe from "./subcomponents/AboutMe";
import Projects_Section from "./subcomponents/Projects_Section";

export default {
  name: "MainApplication",
  components: {
    AboutMe,
    Navigation,
    Projects_Section,
  },
  data() {
    return {
       links: [{
        name:'Github',
        icon:'fab fa-github',
        link: '#',
        color:'color:black;'

      },
      {
        name:'LinkedIn',
        icon:'fab fa-linkedin',
        link: '#',
        color:'color:#4875B4;'
        
      }],
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
      ],
       icons: [
        {
          title: "Education",
          Content:"University of Surrey",
          icon: "fas fa-university"
        },

      ]
    };
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
@import 'https://use.fontawesome.com/releases/v5.7.1/css/all.css';
* {
  margin: 0;
  padding: 0;
  text-decoration: none;
  color: black;
}

</style>
