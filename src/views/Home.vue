<template>
  <div class="home">
    <h1 id="title">
      <a href="/">ReillyBrothers.net</a>
    </h1>
    <ul>
      <li v-for="brother in brothers" :key="brother.name">
        <Brother :name="brother.name" :image="brother.image" />
      </li>
    </ul>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Brother from "@/components/Brother.vue"; // @ is an alias to /src

interface BrotherEntry {
  name: string;
  image: string;
}

@Component({
  components: {
    Brother
  }
})
export default class Home extends Vue {
  brothers: BrotherEntry[] = [
    {
      name: "Chris",
      image: require("../assets/chris.png")
    },
    {
      name: "Jim",
      image: require("../assets/jim.png")
    },
    {
      name: "Jack",
      image: require("../assets/jack.png")
    }
  ];
}
</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-flex;
  margin: 0 10px;
}
#title {
  a {
    text-decoration: none;
    color: black;
    font-family: "Courier New", Courier, monospace;
    font-size: 100%;
    :hover {
      color: white;
      text-decoration: none;
      cursor: pointer;
    }
  }
}
</style>