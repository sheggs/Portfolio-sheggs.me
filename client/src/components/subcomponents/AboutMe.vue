<template>
  <div class="app">
    <section class="about_me">
    <div class="aboutme_wrapper">
      <div class="information">
        <div class="imagecontainer">
          <img  alt class="imageplaceholder" />
        </div>
        <h1>{{name}}</h1>
        <h2>{{job_role}}</h2>
        <div v-bind:key="icon.id" v-for="icon in icons">
          <i :class="icon.icon"></i>
          {{icon.title}} : {{icon.Content}}
        </div>
        <div class="container_socials">
        <div v-bind:key="link.id" v-for="link in links">
          <a :href="link.link" :class="link.icon" :style="link.color"></a>
        </div>
        </div>
      </div>
      <div class="imageofme">
        <Skills  v-bind:skills="skills" v-bind:web_dev="web_dev" />
      </div>
    </div>
    </section>
  </div>
</template>

<script>
import Skills from "./Skills";

export default {
  name: "AboutMe",
  components: {
    Skills
  },
  props: ["icons","links"],
  data() {
    return {
      name: "Mahdi Mohammed",
      job_role: "Studying Bsc Computer Science",
     
      skills: [
          {
              name: "Java",
              icon: "fab fa-java",
              color:"color:orange;"
          }, 
          {
              name: "C#",
              icon: "devicon-csharp-plain colored",
              color:""
          },
          {
              name: "Python",
              icon: "fab fa-python",
              color:"color:red;"
          },
           {
              name: "Lua",
              icon: "fab fa-lua",
              color:"color:blue;"
          },
          
      ],
      web_dev: [
          {
              name: "VueJS",
              icon: "devicon-vuejs-plain-wordmark",
              color:"color:green;"
          }, {
              name: "NodeJS",
              icon: "fab fa-node",
              color:"color:green;"
          },
           {
              name: "MySQL",
              icon: "devicon-mysql-plain-wordmark colored",
              color:""
          },
      ]
    };
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
@import "https://use.fontawesome.com/releases/v5.7.1/css/all.css";
i {
  padding: 0 0.5rem;
}
h1 {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-weight: 100;
}
h2 {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-weight: 100;
}
.container_socials{
display: flex;  
padding-left:11.4vw;
  margin: auto;

}
a{
  font-size:4rem;
}
.imagecontainer img {
  padding: 10px 10px;
}
.about_me{
  margin-top:10vh;
}
* {
  margin: 0;
  padding: 0;
  text-decoration: none;
  color: black;
}

.aboutme_wrapper {
  display: grid;
  grid-gap: 30px;
  max-width: 100vw;
  margin: auto;
  margin-top: 5vh;
  padding-top: 5vh;

  grid-template-areas: "information image";
}
.information {
  max-width: 30vw;
  grid-area: information;
  padding-left: 16vw;
}
.imageofme {
  grid-area: image;
}
.aboutme_wrapper{
  width:100vw;
    height:80vh;

}
.imageplaceholder {
  height:15vw;
  width: 15vw;
  /* background-image: url("../../images/picofme.jpeg"); */
  background-size: cover;
  overflow: hidden;
  background-repeat: no-repeat;
  background-position: 50% 50%;
  border-radius: 15vw;
  
}
</style>
