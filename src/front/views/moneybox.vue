<template>
    <div style="">
		<div v-if="moneyBox.checkUpdate" >
			<v-layout style="padding-top: 20%;padding-left: 43%;">
						<v-flex md10 xs10>
							<p> Dinero actual: <span>{{moneyBox.actualMoneyInBox}}</span></p>
							<p> nuevo dinero en caja actual: <span>{{moneyBox.newMoneyInSaleBox - moneyBox.newRemoveToBox }}</span></p>
							<p> Faltan: <span>{{moneyBox.actualMoneyInBox - moneyBox.newMoneyInSaleBox}}</span></p>
							<p> Dinero para sacar de caja: <span>{{moneyBox.newRemoveToBox}}</span></p>
							<v-btn  dark @click="resetpdateSaleBox()"> cancelar</v-btn>
							<v-btn  dark @click="newReportChecked()"> Confirmar</v-btn>

						</v-flex>
			</v-layout>
		</div>

		<div v-if="!moneyBox.checkUpdate">
			<v-layout >
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
														<v-flex xs10>
															Dinero en Caja:
														</v-flex>
														<v-flex xs2>
															{{moneyBox.actualMoneyInBox}}
														</v-flex>
													</v-layout>
												</span>
												<span>
													<v-layout v-if="moneyBox.actualMoneyCard">
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
												<span>en caja :{{report.money}}</span>
												<br>
												<span>retirado :{{report.remove_to_box}}</span>
											</p>
										</div>
									</v-card-title>
								</v-flex>
							</v-layout>
						</v-container>
					</v-card>
				</v-flex>
				<v-flex>
					<v-layout row style="padding-top: 20%;padding-left: 20%;">
						<v-flex md2 xs2>
							<p style="padding-left: 26%;">Caja:</p>
						</v-flex>
						<v-flex md3 xs3>
							<v-text-field
								v-model="moneyInBox"
							></v-text-field>
						</v-flex>
						<v-flex md7 xs7></v-flex>

					</v-layout>
					<v-layout style="padding-left: 20%;">
						<v-flex md2 xs2>
							<p style="padding-left: 26%;">Retirada:</p>
						</v-flex>
						<v-flex md3 xs3>
							<v-text-field
								v-model="removeToBox"
							></v-text-field>
						</v-flex>
						<v-btn  dark @click="newReport()"> hacer caja</v-btn>
					</v-layout>
				</v-flex>
			</v-layout>
		</div>

    </div>
</template>

<script>
import { mapActions,mapState } from "vuex"
export default {
  name: "moneybox",
  data: () => ({
	seeDates: true,
	moneyInBox :0,
	removeToBox :0,
	fecha1:false,
	initialDate: new Date().toISOString().substr(0, 10),
	dateMommentFormat:''
  }),
  computed: Object.assign({}, mapState([
	"moneyBox"
	]),{
	initialDateFormated () {
		this.dateMommentFormat = this.formatDateToMomment(this.initialDate)
		return this.formatDate(this.initialDate)
	} }),
  methods: Object.assign({},mapActions([ "findAllLastBoxReports","addNewDataToMoneyBox","checkAddNewDataToMoneyBox","resetpdateSaleBox" ]),{

	formatDate (date) {
      if (!date) return null
      const [year, month, day] = date.split('-')
      return `${day}/${month}/${year}`
    },
	formatDateToMomment (date) {
      if (!date) return null
      const [year, month, day] = date.split('-')
      return `${month}/${day}/${year}`
    },
    parseDate (date) {
      if (!date) return null
      const [month, day, year] = date.split('/')
      return `${year}-${month.padStart(2, '0')}-${day.padStart(2, '0')}`
	},
	newReport(){
		this.checkAddNewDataToMoneyBox({
			moneyInBox: this.moneyInBox,
			removeToBox: this.removeToBox
		})
		this.moneyInBox = 0
		this.removeToBox = 0

	},
	newReportChecked(){
		this.addNewDataToMoneyBox({
			moneyInBox: this.moneyBox.newMoneyInSaleBox,
			removeToBox: this.moneyBox.newRemoveToBox
		})
		this.moneyInBox = 0
		this.removeToBox = 0
	}
  }),
  created() {
	  this.findAllLastBoxReports()
  }
};
</script>

