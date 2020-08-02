<template>
    <div style="">
		<div style="-webkit-app-region: drag">
			<v-card>
				<v-card-title class="headline primary lighten-3">Configuracion</v-card-title>
				  <h1 class="">
					<v-btn color="success" @click=" console.log('actualiza')">Actualizar</v-btn>
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
						@click=""
					>
						<v-list-tile-content >
							<v-text-field style="width: 100%;" :value="subItem.value" :label="subItem.title" id=""></v-text-field>
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
export default {
	name: "config",
	data: () => ({
		items: []
	}),
	computed: Object.assign({}, mapState(["config"]),{}),
	methods: Object.assign({},mapActions(["getConfigData"]),{}),
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
						{ title: 'Correo',value: this.config.mail },
						{ title: 'Host',value: this.config.mailhost  },
						{ title: 'Puerto',value: this.config.mailport   },
						{ title: 'secure',value: (this.config.secure)? 'TRUE': 'FALSE' },
						{ title: 'actualizar contraseña',value:''  },
						{ title: 'subir imagen firma de email',value:''  }
					]
				},
				{
					action: 'admin_panel_settings',
					title: 'parametros de la aplicacion',

					items: [
						{ title: 'impuestos',value: this.config.vat }
					]
				}
			]
		}
	}

};
</script>

