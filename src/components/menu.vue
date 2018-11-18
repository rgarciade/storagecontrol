<template>
  <div class='men'>
  <ul class='nav-list'>
    <li class='test'>
      <i class="flaticon-bell" ></i>Dasboard
      <ul class='interna'>
        <li>sss</li>
        <li>dff</li>
      </ul>
    </li>
    <li><i class="flaticon-file-1" ></i>Layout</li>
    <li><i class="flaticon-settings-2" ></i>Graphs</li>
    <li><i class="flaticon-users" ></i>enlace</li>
    <li><i class="flaticon-folder" ></i>enlace</li>
  </ul>


    <!--   <router-link to="/Contacto">Contacto</router-link>
      <router-link to="/">Prueba</router-link> -->
  </div>
</template>

<script>
export default {
  name:'Menu'
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
    transition: max-height 1s ease-out;
    overflow: hidden;
    background: #293744;
}

li:hover> .interna{
    max-height: 500px;
    transition: max-height 1s ease-in;
}
i{
      color:#90959a;
}
li{
  margin-left:  -19px;
}
li:hover{
  background-color: #2c353d;
}

</style>