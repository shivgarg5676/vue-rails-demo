
<template>
  <div>
    rendered course page compnents
    <div>
      {{this.name}}
      <div v-for="faq in faqs"  :key="faq.id" >
          <div>
            {{faq.question}}
        </div>
        <html-render v-bind:price='price' v-bind:rhtml='faq.answer' />
        <!-- <no-ssr>
            <html-render v-bind:price='price' v-bind:rhtml='faq.answer' />
        </no-ssr> -->
      </div>
    </div>
  </div>
</template>

<script>
import HtmlRender from '@/components/html-renderer.vue';
export default {
  data () {
    return {
      name: this.$route.params.courseId,
      faqs: [],
      price: 100
    }
  },
  async asyncData (context) {
    let data = await context.app.$axios.get('/api/course_pages/' + context.route.params.courseId + '/faqs')
    return { faqs: data.data }
  },
  components: {
    HtmlRender
  },
}
</script>
