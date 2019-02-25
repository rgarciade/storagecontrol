<template>
  <div>
    <h1>ñañaña:{{comnpanyName}}</h1>
      aaa
 </div>
</template>

<script>
  import { mapState, mapActions } from "vuex"

  export default {
      name: 'conpanyconfiguration',
      mounted(){
          this.comnpanyName = this.$route.params.comnpanyName
      },
      data(){
          return {
              comnpanyName:"bb"
          }
      },
      computed: mapState(["company"])/* ,
      methods: mapActions(["findCompanys"]), */
  }
</script>