<template>
  <div class="">
    <Menu class="Mymenu" :menuRoutes="menuRoutes"></Menu>
    <router-view class='routerView' :data="data"></router-view>
  </div>
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
    margin-left: 11em;
    margin-right: 1em;
}
body{
    
    background-color: white;
    font-size: 13px;
    color: #676a6c;
    overflow-x: hidden;
}
</style>
