<template>
  <v-app>
    <Menu class="Mymenu" :menuRoutes="menuRoutes"></Menu>
    <Progress :active="false"></Progress>
    <router-view class='routerView' :data="data"></router-view>
  </v-app>
</template>

<script>
export default {
  name: 'app',
  props: ['menuRoutes','data'],
}
</script>
<style>
.routerView{
    position: inherit;
    margin-left: 6.1em;
    margin-right: 1em;
}
body{   
    background-color: white;
    font-size: 13px;
    color: #676a6c;
    overflow-x: hidden;
}
</style>
