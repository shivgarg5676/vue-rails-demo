
<template>
  <div>
    rendered course page compnents
    <div>
      {{this.name}}
      <div v-for="faq in faqs"  :key="faq.id" >
        <div>
            {{faq.question}}
        </div>
        <html-render v-bind:priceAction='price1' v-bind:price='price' v-bind:rhtml='faq.answer' v-bind:blockAmount="blockAmount" />
        <button v-on:click="price1">Add 1</button>
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
      price: 0,
      blockAmount: 0
    }
  },
  async asyncData (context) {
    let courseData = await context.app.$axios.get("/api/course_pages/data-science")
    let faqData = await context.app.$axios.get('/api/course_pages/' + context.route.params.courseId + '/faqs')
    return {
        price: courseData.data.price, 
        faqs: faqData.data,
        blockAmount: courseData.data.block_price
     }
  },
  components: {
    HtmlRender
  },
  methods:{
    price1: function(){
      console.log(this.price)
    }
  }
}
</script>
