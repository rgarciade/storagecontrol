<template>
<v-navigation-drawer
        v-model="drawer"
        :mini-variant="mini"
        floating
        hide-overlay
        stateless
        absolute
        dark
        class='background_img fixedmenu position_menu'
      >
        <v-list class="pa-1 list_background">
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
          <v-list class="pt-0 list_background min_height_menu" dense>
            <v-divider light></v-divider>
            <v-list-tile
              v-for="item in menuRoutes"
              :key="item.title" >
              <v-list-tile-action>
                <router-link :to="item.route"  >
                  <v-icon>{{ item.icon }}</v-icon>
                </router-link>
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

<script>
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
</script>

<style scoped>
.menu_arrow_right {
    margin-left: -6px;
}
.position_menu{
  z-index: 999;
}

a {
    color: #507fbd;
    cursor: pointer;
}
.list_background{
  background: rgba(27,27,27,.74);
}
.min_height_menu{
  min-height: 100% 
}
.background_img{
    background-image: url(./public/imgs/menu.jpg);
    overflow-y: hidden;
    overflow-x: hidden;
    background-repeat: no-repeat;
    background-size: auto 100%;
}
.router-link-exact-active {
    color: #95c527
}
.router-link-exact-active > i{
    color: #95c527
}
.fixedmenu{
  position: fixed;
}
</style>
