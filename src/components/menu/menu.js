import { mapState } from "vuex"

export default {
    name: 'Menu',
    computed: mapState(["menuRoutes"]),
    data() {
        return {
            drawer: true,
            mini: true,
            right: null
        }
    }
}