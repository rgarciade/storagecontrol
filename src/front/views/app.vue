<template>
  <v-app>
    <Menu class="Mymenu" ></Menu>
    <Alerts></Alerts>
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
textarea, input, body{
  text-transform: uppercase !important;
}
#c_email, #correo, .email{
    text-transform: lowercase !important;
}
.container_position{
  margin-top: 2em;
}
a{
  text-decoration: none;
}
.arrowback{
    position: absolute;
    margin-top: 1em;
    margin-left: 1em;
    cursor: pointer;
}
.button_add_company{
  position: absolute;
    margin-left: 90%;
}
.button_add_company:hover{
  position: absolute !important;
}

</style>
