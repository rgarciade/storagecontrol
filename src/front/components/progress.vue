<template>
    <v-progress-linear :indeterminate="true" :active="this.progresActive"></v-progress-linear>
</template>
<script>
    import { mapState, mapActions } from "vuex"
    export default {
        name: 'progress',
        computed: mapState(["progresActive"])
    }
</script>
<style>
.v-progress-linear {
    margin: 0
}
</style>