<template>
    <div class="">
        <v-btn color="success"  v-on:click="increment">increment</v-btn>
        <v-btn color="primary"  v-on:click="decrement">decrement</v-btn>
        <v-btn color="error"    v-on:click="charging">charging</v-btn>
        <v-btn color="warning"  v-on:click="charged">charged</v-btn>
        <v-btn color="info">Info</v-btn>
    </div>
</template>
<script>
import { mapActions } from "vuex"

export default {
  name:'prueba', 
  methods: mapActions(["increment", "decrement", "charging", "charged"]) 
}
</script>