import { mapState, mapActions } from "vuex"
export default {
    name: 'app',
    computed: mapState(["count"]),
}