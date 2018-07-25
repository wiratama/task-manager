import Vue from 'vue';
import VueRouter from 'vue-router';
Vue.use(VueRouter);

import axios from 'axios';

import componentDashboard from '../component/dashboard/dashboard.vue';

let router = new VueRouter({
  mode: 'history',
  routes: [
    { path: '/admin/dashboard', component: componentDashboard, name: 'admindashboard' },
  ],
  scrollBehavior (to, from, savedPosition) {
    return { x: 0, y: 0 }
  }
});

export default router;