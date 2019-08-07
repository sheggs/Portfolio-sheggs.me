<template>
  <div class="app">
      <div class="aboutme_wrapper">
          <div class="information">
            <div class="imagecontainer">
              <img  alt="" class="imageplaceholder">
            </div>a
            <h1>{{name}} </h1>
            <h2>{{job_role}}</h2>
            <div v-bind:key="icon.id" v-for="icon in icons"><i :class="icon.icon"> </i>{{icon.title}} : {{icon.Content}}</div>
          </div>
          <div class="imageofme">
          </div>
      </div>
  </div>
</template>

<script>

export default {

  name: "AboutMe",
    components: {
  },
  props: ["icons"],
  data() {
    return {
      name:"Mahdi Mohammed",
      job_role: "Studying Bsc Computer Science",
     
    };
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
@import 'https://use.fontawesome.com/releases/v5.7.1/css/all.css';
i{
  padding: 0 0.5rem;
}
h1{
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-weight: 100;
}
h2{
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
      font-weight: 100;


}

.imagecontainer img{
padding:10px 10px;
}
* {
  margin: 0;
  padding: 0;
  text-decoration: none;
  color: black;
}
.aboutme_wrapper{
  display: grid;
  grid-gap: 30px;
  max-width:100vw;
  margin:auto;
  margin-top:5vh;

  grid-template-areas: 'information image'
}
.information{
  max-width:30vw;
  grid-area: information;
}
.imageofme{
  grid-area:image;
}
.imageplaceholder{
  width:15vw;
  height: 15vw;
  overflow: hidden;

  /**background-image: url('../../images/picofme.jpeg');**/
 background-size: cover;
    background-repeat: no-repeat;
    background-position: 50% 50%;  border-radius:15vw;
}

</style>
