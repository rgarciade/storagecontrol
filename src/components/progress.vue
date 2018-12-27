<template>
    <v-progress-linear :indeterminate="true" :active="this.inProgress"></v-progress-linear>
</template>
<script>
export default {
  name: 'progress',
  props: ['active'],
    data () {
    return {
      inProgress: false,
    }
  },
  mounted () {
    this.checkStatus()
  },
  updated () {
    this.checkStatus()
  },
  methods: {
    checkStatus () {
        if(this.active){
            this.inProgress = true
        }else{
            this.inProgress = false
        }
    }
  }
}
</script>
<style>
.v-progress-linear{
    margin:0
}
</style>