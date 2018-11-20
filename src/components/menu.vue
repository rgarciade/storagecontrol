<template>
  <div class='men'>
    <ul class='nav-list'>

      <li v-for="route in menuRoutes" :key="route.id" >
        <i :class="route.icon" ></i>{{route.name}}
        <ul v-if="route.subMenu" class='interna'>
              <li v-for="subMenuRoute in route.subMenu" :key="subMenuRoute.id" >
                <i :class="subMenuRoute.icon" ></i>{{subMenuRoute.name}}
              </li>
        </ul>
      </li>
      
    </ul>
  </div>
</template>

<script>
export default {
  name:'Menu',
  props: ['menuRoutes']
}


</script>
<style>
.men{
    position: fixed;
    width: 10em;
    max-width: 10em;
    margin-left: -8px;
    min-height: 100%;
    background-color: #2f4050;
}
.nav-list{
  margin-left: -1.5em;
  margin-top: 1.5em;
  line-height: 2;
}
.nav-list > li {
   z-index: 100;
}
.interna{
    max-height: 0;
    transition: max-height .25s ease-out;
    overflow: hidden;
    background: #293744;
}
.interna >li {
      margin-left: -40px;
      border-left: 2px solid #19aa8d;
     
}
.interna li> i {
      margin-left: 1em;
}

li:hover> .interna{
    max-height: 500px;
    border-left-color:5px coral;
    transition: max-height 1s ease-in;
}
i{
      color:#90959a;
}
li{
  list-style:none;
  margin-left:  -19px;
}
li:hover{
  background-color: #2c353d;
}

</style>