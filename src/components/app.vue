<template>
  <div>
    Hello from {{text}}
    <Menu></Menu>
    <router-view></router-view>
  </div>
  
</template>

<script>
export default {
  name: '#app',
  data () {
    return {
       text: ''
    }
  }
}
</script>
