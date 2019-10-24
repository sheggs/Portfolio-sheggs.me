<template>
  <div class="app">

    <section id = "projects" class = "projects">
        <div class="uppercontainer">
         <h1 class = "project_title">Projects</h1>
         <input type="text" class="project_search sheggsSearchChange" placeholder="🔍Search for project names" @input = "sheggsSearchChange"/>
        </div>
            
              <Card class = "Card" v-bind:card_data="proj" />

    </section>
  </div>
</template>

<script>

import Card from "./Card.vue";
import sheggsReq from '@/services/sheggs_req'
export default {
  
  name: "Projects_Section",
  props: ["tabs"],
    components: {
      Card,
    },
  data() {
    return {
      hide:false,
      msg: "Welcome to Your Vue.js App",  
      proj : null
    };
  },
  
  async mounted() {
      this.proj = (await sheggsReq.getAllValues())["data"]
    
  },
  methods: {
     sheggsSearchChange: async function(){
      let searchBox = document.getElementsByClassName("sheggsSearchChange")[0]
                  this.proj = (await sheggsReq.queryValues(searchBox.value))["data"]

      //alert(this.proj)
      //alert(searchBox.value)
    }
  }
};

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
@import 'https://use.fontawesome.com/releases/v5.7.1/css/all.css';
@import url('https://fonts.googleapis.com/css?family=Roboto&display=swap&subset=latin-ext');
.projects{
    width:100vw;
    min-height: 90vh;
      font-family: 'Roboto', sans-serif;
  font-style: Regular;

   /* background-image: linear-gradient(white, yellow); */

}
.Card{
  display:flex;
}
.card-project-description{
  font-size: .8rem;
  text-align: left;
    padding: .5vw 1vw;

}
.card-project-title{
    padding: .5vw 1vw;
    font-family: 'Roboto', sans-serif;

    font-weight : 900;
    text-align: left;

}
.card-title{
  width:100%;
  display: flex;
  padding: .5vw 1vw;
  font-size:.8rem;
  text-align: left;
  font-family: 'Roboto', sans-serif;
  font-style: Regular;
}
.cardcontainer{
          padding: 20px 20px;
  
color:black;
    display: -webkit-flex;
    justify-content: center;
    -webkit-justify-content: center;
}
.imageContainer{
    background-image: url('https://images.pexels.com/photos/307008/pexels-photo-307008.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260');
width:100%;
height:30vh;
  /* width:100%;
  padding:0;
  height:10px;
  top:0;
  background-image: url('https://images.pexels.com/photos/307008/pexels-photo-307008.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260');
  background-position: center;
  background-repeat: no-repeat;
  background-size:cover; */

}
.project_search{
  border: none;
  border-radius: 10px;
  box-shadow:  0 2px 10px 0 rgba(0,0,0,0.4);
  min-width: 15vw;
  height: 4.3vh;
}
.uppercontainer{
  display: block;
  width: 100vw;
  margin:auto;
  padding:10px 0px;
}
.project_title{
  text-align: center;
  
}
.information{
  min-width: 100%;
  min-height: 10vh;
border-bottom-left-radius: 12px;
border-bottom-right-radius: 12px;
  z-index: 2;

}
.card_outline{
  /* margin:0;
  top:0;
  padding:0; */
  /* height:40vh; */
  width:15vw;
  background-color:white;
  /* border: 2px solid #73AD21; */

  border-bottom-left-radius: 12px;
border-bottom-right-radius: 12px;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
 /* border-bottom-left-radius: 12px;
border-bottom-right-radius: 12px; */
   /* padding: 16px 24px 24px 24px; */
}
</style>
