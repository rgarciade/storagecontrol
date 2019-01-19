import { mapState } from "vuex"
export default {
    name: 'app',
    computed: mapState(["count"]),
}