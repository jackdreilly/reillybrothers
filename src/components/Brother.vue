<template>
  <div class="brother">
    <h2>
      <a :href="url">{{this.name}}</a>
    </h2>
    <img :src="image" />
  </div>
</template>

<script lang="ts">
import { Component, Prop, Vue } from "vue-property-decorator";

@Component
export default class Brother extends Vue {
  @Prop() private name!: string;
  @Prop() private image!: string;
  get url(): String {
    return `http://${this.name}.reillybrothers.net`;
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
.brother {
  height: 20em;
  width: 15em;
  border: black solid 1px;
  border-radius: 1em;
  padding: 1em;
  margin: 3em;
  h2 {
    margin: 40px 0 0;
    a {
      color: #42b983;
    }
  }
  img {
    height: 75%;
    width: 100%;
    object-fit: cover;
  }
}
</style>
