<template>
    <div>
   <v-snackbar
        v-if="msg != ''"
        v-model="msg"
        multi-line
        :timeout=10000
        top
      >
        {{msg}}
        <v-btn
          color="pink"
          flat
          @click="msg = false"
        >
          Cerrar
        </v-btn>
      </v-snackbar>
    </div>
</template>
<script>
    import { mapState, mapGetters, mapActions} from "vuex"
    export default {
        name: 'alert',
        computed: mapState(['alert']),
        data(){
          return { msg:'' }
        },
        watch:{
          alert: function(val){
            if(val != ''){
              this.msg = val
            }
          }
        }
    }
</script>
<style scoped>
</style>
