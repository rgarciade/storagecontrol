<template>
  <v-app>
    <Menu class="Mymenu" ></Menu>
    <Progress :active="false"></Progress>
    <router-view class='routerView' default="{name: 'home'}"></router-view> 
  </v-app>
</template>

<script src="./app.js" />
<style src="./app.css" />
