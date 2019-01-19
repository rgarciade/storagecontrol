<template>
  <v-app>
    <div class="count">
      aa:{{count}}
    </div>
    <Menu class="Mymenu" ></Menu>
    <Progress :active="false"></Progress>
    <router-view class='routerView'></router-view> 
  </v-app>
</template>

<script src="./app.js" />
<style src="./app.css" />
