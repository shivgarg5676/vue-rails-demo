import Vue from 'vue'
import Router from 'vue-router'
import HomePage from '@/components/home-page'
import CoursePage from '@/components/course-page'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/:course_page_slug/',
      name: 'CoursePage',
      component: CoursePage
    }, {
      path: '/',
      name: 'HomePage',
      component: HomePage
    }
  ]
})
