<template>
    <div style="">
		<v-layout>
			<v-flex xs3 >
				<v-card color="purple" class="white--text">
					<v-container
						fluid
						grid-list-lg>
						<v-layout row wrap>
            				<v-flex xs12>
								 <v-card-title primary-title>
									<div>

											<span>
												<v-layout>
													<v-flex xs9>
														Dinero en Caja :
													</v-flex>
													<v-flex xs3>
														{{moneyBox.actualMoneyInBox}}
													</v-flex>
												</v-layout>
											</span>
											<span>
												<v-layout>
													<v-flex xs10>
														Dinero en Tarjeta :
													</v-flex>
													<v-flex xs2>
														{{moneyBox.actualMoneyCard}}
													</v-flex>
												</v-layout>
											</span>
									</div>
								</v-card-title>
							</v-flex>
						</v-layout>
					</v-container>
				</v-card>
				<v-card
					v-for="report in moneyBox.lastReports"
					:key="report.id">
					<v-container
						fluid
						grid-list-lg
						>
						<v-layout row wrap>
            				<v-flex xs12>
								 <v-card-title primary-title>
									<div>
										<div class="headline"><span class="">{{report.date}}</span></div>
										<p>
											<span v-if="report.close_box">cierre</span>
										</p>
										<p>
											<span v-if="report.open_box">apertura</span>
										</p>
										<p>
											<span>money:{{report.money}}</span>
										</p>
									</div>
								</v-card-title>
							</v-flex>
						</v-layout>
					</v-container>
				</v-card>
			</v-flex>
			<v-flex>
				<v-layout row style="padding: 20%;">

					<v-flex xs4 >
						<v-menu
							v-if="seeDates"
							ref="fecha1"
							v-model="fecha1"
							:close-on-content-click="false"
							:nudge-right="40"
							lazy
							transition="scale-transition"
							offset-y
							full-width
							max-width="290px"
							min-width="290px"
						>
							<template v-slot:activator="{ on }">
								<v-text-field
								v-model="initialDateFormated"
								label="Fecha De reporte"
								hint="DD/MM/YYYY"
								persistent-hint
								prepend-icon="event"
								readonly
								v-on="on"
								></v-text-field>
							</template>
							<v-date-picker v-model="initialDate" no-title @input="fecha1 = false" locale="es-ES"></v-date-picker>
						</v-menu>
					</v-flex>
					<v-flex xs2>
						<p style="padding-top: 32%; padding-left: 26%;">Caja:</p>
					</v-flex>
					<v-flex xs3>
						<v-text-field
							v-model="moneyInBox"
						></v-text-field>
					</v-flex>
				</v-layout>
			</v-flex>
		</v-layout>
    </div>
</template>

<script>
import { mapActions,mapState } from "vuex"
export default {
  name: "moneybox",
  data: () => ({
	moneyInBox: '',
	seeDates: true,
	fecha1:false,
	initialDate: new Date().toISOString().substr(0, 10)
  }),
  computed: Object.assign({}, mapState([
	"moneyBox"
	]),{
	initialDateFormated () {
		return this.formatDate(this.initialDate)
	} }),
  methods: Object.assign({},mapActions([ "findAllLastBoxReports" ]),{

	formatDate (date) {
      if (!date) return null
      const [year, month, day] = date.split('-')
      return `${day}/${month}/${year}`
    },
    parseDate (date) {
      if (!date) return null
      const [month, day, year] = date.split('/')
      return `${year}-${month.padStart(2, '0')}-${day.padStart(2, '0')}`
    }
  }),
  created() {
	  this.findAllLastBoxReports()
  }
};
</script>

