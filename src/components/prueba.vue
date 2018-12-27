<template>
    <div>
        {{data.id}}<br>
        <button v-on:click="data.id += 1">Add {{data.id}}</button>
    </div>
</template>
<script>
export default {
  name:'prueba',
  props: ['data'],
  data(){
    return {
        data:this.data
    }
  }
  
}
</script>