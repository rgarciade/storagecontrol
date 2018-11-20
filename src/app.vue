<template>
  <div>
    <Menu class='menu' :menuRoutes="menuRoutes"></Menu>
    <router-view class='routerView' :Appdata="Appdata"></router-view>
  </div>
  
</template>

<script>
export default {
  name: 'app',
  props: ['menuRoutes','Appdata']
}
</script>
<style>
.routerView{
    position: inherit;
    margin: -8px -8px 0 10em;

}
body{
    
    background-color: white;
    font-size: 13px;
    color: #676a6c;
    overflow-x: hidden;
}
</style>
