<template>
  <div class="app">
      
    <div class="cardcontainer" v-bind:key="card.id" v-for="(card, index) in card_data">
        {{hidden_array[index] = false}}
        {{index}}
      <div class="card_outline">
        <div
          class="imageContainer"
          style="background-image: url('https://images.pexels.com/photos/307008/pexels-photo-307008.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260');"
        ></div>
        <div class="information">
          <div class="card-title">
            <h1>Website</h1>
          </div>
          <div class="card-project-title">
            <h1>Sheggs.me</h1>
          </div>

          <div class="card-project-description" >
            <h1
              class="description js_hideshit"
              text="hi" visible = "hidden_array[index]"
            >Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quo ipsum laudantium ratione, natus assumenda consectetur et iste non ducimus. Dolorem hic cupiditate nobis assumenda doloribus aut quo, fugiat repellendus voluptatibus.</h1>
          </div>
          <button v-on:click="hider(index)">Test</button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Navigation",
  props: ["card_data"],

  data() {
    return {
    hidden_array: [],
      hide: false,
      msg: "Welcome to Your Vue.js App"
    };
  },
   methods:{  hider : function(index){
    alert("TEST:"+this.hidden_array[index])
    this.hidden_array[index] = true;
    let desc_div = document.getElementsByClassName("card-project-description")[0]
    desc_div.setAttribute()
    console.log(desc_div);
  }},
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
@import "https://use.fontawesome.com/releases/v5.7.1/css/all.css";
@import "https://fonts.googleapis.com/css?family=Roboto&display=swap&subset=latin-ext";
.projects {
  width: 100vw;
  height: 90vh;
  font-family: "Roboto", sans-serif;
  font-style: Regular;

  /* background-image: linear-gradient(white, yellow); */
}
.card-project-description {
  font-size: 0.8rem;
  text-align: left;
  padding: 0.5vw 1vw;
}
.card-project-title {
  padding: 0.5vw 1vw;
  font-family: "Roboto", sans-serif;

  font-weight: 900;
  text-align: left;
}
.card-title {
  width: 100%;
  display: flex;
  padding: 0.5vw 1vw;
  font-size: 0.8rem;
  text-align: left;
  font-family: "Roboto", sans-serif;
  font-style: Regular;
}
.cardcontainer {
  display: flex;
  padding: 20px 20px;

  color: black;
  display: -webkit-flex;
  justify-content: center;
  -webkit-justify-content: center;
}
.imageContainer {
  width: 100%;
  height: 30vh;
  /* width:100%;
  padding:0;
  height:10px;
  top:0;
  background-image: url('https://images.pexels.com/photos/307008/pexels-photo-307008.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260');
  background-position: center;
  background-repeat: no-repeat;
  background-size:cover; */
}
.information {
  min-width: 100%;
  min-height: 10vh;
  border-bottom-left-radius: 12px;
  border-bottom-right-radius: 12px;
  z-index: 2;
}
.card_outline {
  /* margin:0;
  top:0;
  padding:0; */
  /* height:40vh; */
  width: 15vw;
  background-color: white;
  /* border: 2px solid #73AD21; */

  border-bottom-left-radius: 12px;
  border-bottom-right-radius: 12px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  /* border-bottom-left-radius: 12px;
border-bottom-right-radius: 12px; */
  /* padding: 16px 24px 24px 24px; */
}
</style>
