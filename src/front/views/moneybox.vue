<template>
    <div style="">
	   <div v-for="report in moneyBox.lastReports"
            :key="report.id"
		>
		<p>
			<span class="">{{report.date_reported}}</span>
		</p>
		<p>
			<span v-if="report.close_box">cierre</span>
		</p>
		<p>
			<span v-if="report.open_box">apertura</span>
		</p>
		<p>
			<span>money::{{report.money}}</span>
		</p>
		<p>--------------------------------------------------</p>
		</div>

		<div>actualMoneyInBox ::{{moneyBox.actualMoneyInBox}}</div>
		<div>actualMoneyCard ::{{moneyBox.actualMoneyCard}}</div>
    </div>
</template>

<script>
import { mapActions,mapState } from "vuex"
export default {
  name: "moneybox",
  data: () => ({
  }),
  computed: Object.assign({}, mapState([
	"moneyBox"
	]),{ }),
  methods: Object.assign({},mapActions([ "findAllLastBoxReports" ]),{}),
  created() {
	  this.findAllLastBoxReports()
  }
};
</script>

