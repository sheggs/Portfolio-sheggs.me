<template>
  <div class="app">
      <div class="skills">
          <h1>Skills</h1><br>
          <h3>Programming Languages</h3><br><br>
          <div v-bind:key="skill.id" v-for="skill in skills">
              <p class = "skill_design"><i :class="skill.icon" /> </p>
          </div>
               <h3>Web Development</h3><br><br>
          <div v-bind:key="web.id" v-for="web in web_dev">
              <p class = "sss"><i :class="web.icon" /> </p>
          </div>
      </div>
  </div>
</template>

<script>

export default {

  name: "Skills",
    components: {
  },
  props: ["icons","skills"],
  data() {
    return {
      
    };
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
@import 'https://use.fontawesome.com/releases/v5.7.1/css/all.css';
@import 'https://cdn.rawgit.com/konpa/devicon/df6431e323547add1b4cf45992913f15286456d3/devicon.min.css';
.app{
    margin: 0 100px;
}

.skills h1{
  text-align: left;
}
.skill_design{
  float: left;
  padding:10px;
}
.skill_design i{
  font-size:5rem;
}
h3{
  float:left;
  font-weight: 100;
}
</style>
