import { mapState, mapActions } from "vuex"

export default {
    name: 'companysfinder',
    computed: mapState(["companys"]),
    methods: mapActions(["findCompanys"])
}