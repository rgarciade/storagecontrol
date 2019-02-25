<template>
  <v-app>
    <Menu class="Mymenu" ></Menu>
    <Progress :active="false"></Progress>
    <router-view class='routerView' default="{name: 'home'}"></router-view> 
  </v-app>
</template>

<script>
  import { mapState } from "vuex"
  export default {
      name: 'app',
      computed: mapState(["count"]),
  }
</script>
<style>
.routerView {
    position: inherit;
    margin-left: 6.1em;
    margin-right: 0em;
    margin-top: -1em;
}

body {
    background-color: white;
    font-size: 13px;
    color: #676a6c;
    overflow-x: hidden;
}
</style>
