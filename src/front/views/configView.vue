<template>
    <div style="">
		<div style="-webkit-app-region: drag">
			<v-card>
				<v-card-title class="headline primary lighten-3">Configuracion</v-card-title>
				  <h1 class="">
					<v-btn color="success" @click="updateConfigurationDatas()">Actualizar</v-btn>
				</h1>
			</v-card>

		</div>
		<v-layout row>
			<v-flex xs12 sm6 offset-sm3 class="configBody">
				<v-card>
				<v-list>
					<v-list-group
					v-for="item in items"
					:key="item.title"
					v-model="item.active"
					:prepend-icon="item.action"
					no-action
					>
					<template v-slot:activator>
						<v-list-tile>
						<v-list-tile-content >
							<v-list-tile-title>{{ item.title }}</v-list-tile-title>
						</v-list-tile-content>
						</v-list-tile>
					</template>

					<v-list-tile
						v-for="subItem in item.items"
						:key="subItem.title"
					>
						<v-list-tile-content >
							<v-text-field v-if="subItem.type === 'text'" style="width: 100%;" :value="subItem.value" :label="subItem.title" :id="subItem.id"></v-text-field>
							<v-btn v-if="subItem.type === 'button'" color="success" @click="subItem.function">{{subItem.title}}</v-btn>
							<v-text-field
								v-if="subItem.type === 'password'"
								append-icon="remove_red_eye"
								:type="subItem.show ? 'text' : 'password'"
								:label="subItem.title"
								:id="subItem.id"
								@click:append="subItem.show = !subItem.show"
								></v-text-field>
							<v-switch
									v-if="subItem.type == 'switch'"
									:input-value="subItem.value"
									:id="subItem.id"
									:label="subItem.title"
							></v-switch>
						</v-list-tile-content>

						<v-list-tile-action>
						<v-icon>{{ subItem.action }}</v-icon>
						</v-list-tile-action>
					</v-list-tile>
					</v-list-group>
				</v-list>
				</v-card>
			</v-flex>
		</v-layout>
    </div>
</template>

<script>
import { mapActions,mapState } from "vuex"
const ipcRenderer = require('electron').ipcRenderer;
export default {
	name: "configView",
	data: () => ({
		items: []
	}),
	computed: Object.assign({}, mapState(["config","filePaths"]),{}),
	methods: Object.assign({},mapActions(["getConfigData","updateConfiguration", "testMail", "generateAlert"]),{
		updateConfigurationDatas(){
			let newConfigData = {
				mail: document.getElementById("_Correo").value,
				mailhost: document.getElementById("_Host").value,
				mailport: document.getElementById("_Puerto").value,
				mailpassword: document.getElementById("_contraseña").value,
				secure: document.getElementById('_secure').checked,
				tls: document.getElementById('_tls').checked
			}
			if(document.getElementById("_contraseña").value != '' && document.getElementById("_contraseña").value != null ){
				newConfigData.mailpassword =  document.getElementById("_contraseña").value
			}
			this.updateConfiguration(newConfigData)
		},
		sendTestEmail(){
			let mail = document.getElementById("_emailprueba").value
			if(mail == ''){
				this.generateAlert('necesita introducir un email')
			}else{
				this.testMail(mail)
			}

		}
	}),
	mounted() {
		this.getConfigData()
	},
	watch: {
		config(newValue, oldValue) {
			this.items = [
				{
					action: 'alternate_email',
					title: 'Configuracion email',
					active: true,
					items: [
						{ title: 'Correo', id: '_Correo', type: 'text', value: this.config.mail },
						{ title: 'Host', id: '_Host', type: 'text', value: this.config.mailhost  },
						{ title: 'Puerto', id: '_Puerto', type: 'text', value: this.config.mailport   },
						{ title: 'secure', id: '_secure', type: 'switch', value: this.config.secure },
						{ title: 'tls', id: '_tls', type: 'switch', value: this.config.tls },
						{ title: 'contraseña', id: '_contraseña',type: 'password', show:false },
						{ title: 'subir imagen firma de email',type: 'button',function: ()=>{ ipcRenderer.send('select-sing')} },
						{ title: 'donde enviar email de prueba',type: 'text', id: '_emailprueba' },
						{ title: 'email de prueba', type: 'button', function: this.sendTestEmail  }
					]
				},
				{
					action: 'admin_panel_settings',
					title: 'parametros de la aplicacion',

					items: [
						{ title: 'impuestos', id: '_impuestos', type: 'text', value: this.config.vat },
						{ title: 'Cuenta Bancaria', id: 'Cuenta Bancaria', type: 'text', value: this.config.banknumber }
					]
				}
			]
		}
	}

};
</script>

