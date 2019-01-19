<template>
<v-navigation-drawer
        v-model="drawer"
        :mini-variant="mini"
        floating
        hide-overlay
        stateless
        absolute
        dark
      >
        <v-list class="pa-1">
          <v-list-tile v-if="mini" @click.stop="mini = !mini">
            <v-list-tile-action>
              <v-icon class='menu_arrow_right'>chevron_right</v-icon>
            </v-list-tile-action>
          </v-list-tile>
  
          <v-list-tile v-if="!mini">
            <v-list-tile-content>
              <v-list-tile-title>Menu</v-list-tile-title>
            </v-list-tile-content>
  
            <v-list-tile-action>
              <v-btn icon @click.stop="mini = !mini">
                <v-icon>chevron_left</v-icon>
              </v-btn>
            </v-list-tile-action>
          </v-list-tile>
        </v-list>
  
        <v-list class="pt-0" dense>
          <v-divider light></v-divider>
          <v-list-tile
            v-for="item in menuRoutes"
            :key="item.title" >
            <v-list-tile-action>
              <v-icon>{{ item.icon }}</v-icon>
            </v-list-tile-action>
  
            <v-list-tile-content>
                <v-list-tile-title>
                  <router-link :to="item.route"  >
                    <span @click="mini = !mini">{{ item.title }}</span>
                  </router-link>
                  
                  </v-list-tile-title>
            </v-list-tile-content>
          </v-list-tile>
        </v-list>
      </v-navigation-drawer>
</template>

<script src="./menu.js" />
<style src="./menu.css" scoped>

</style>
