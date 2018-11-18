<template>
  <div>
    <Menu class='menu'></Menu>
    <router-view class='routerView'></router-view>
  </div>
  
</template>

<script>
export default {
  name: 'app',
  data () {
    return {
       text: ''
    }
  }
}
</script>
<style>
.routerView{
    position: inherit;
    margin: -8px -8px 0 10em;

}
.menu{

}
body{
    
    background-color: white;
    font-size: 13px;
    color: #676a6c;
    overflow-x: hidden;
}
</style>
