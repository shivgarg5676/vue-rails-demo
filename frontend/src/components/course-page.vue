
<template>

  <div>
    rendered course page compnent
    <div>
      {{this.name}}
      <div v-for="faq in faqs"  :key="faq.id" v-text="faq.answer">
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      name: this.$route.params.course_page_slug,
      faqs: []
    }
  },
  created () {
    this.fetchFaqs()
  },

  methods: {
    fetchFaqs () {
      window.axios.get('course_pages/' + this.$route.params.course_page_slug + '/faqs').then((response) => {
        return response.data
      }).then((data) => {
        this.faqs = data
      })
    }

  }
}
</script>
