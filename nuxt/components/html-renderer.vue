<script>
import Vue from 'vue';
const compiler =  require("vue-template-compiler");

export default {
  data () {
    return {
      name: 'homepage',
      template: '',
      staticTempFunctions: [],
      show: true
    }
  },
  render: function (createElement) {
    if (!this.template) {
      return createElement('div', 'Loading...')
    } else {
      return this.template()
    }
  },
  props: ['rhtml', 'price','blockAmount'],
  watch: {
    rhtml: {
      immediate: true,
      handler () {
        var res = compiler.compileToFunctions(this.rhtml)
        this.template = res.render
        // staticRenderFns belong into $options,
        // appearantly
        this.$options.staticRenderFns = []
        // clean the cache of static elements
        // this is a cache of the results from the staticRenderFns
        this._staticTrees = []
        // Fill it with the new staticRenderFns
        for (var i in res.staticRenderFns) {
          // staticRenderFns.push(res.staticRenderFns[i]);
          this.$options.staticRenderFns.push(res.staticRenderFns[i])
        }
      }
    }
  }
}
</script>
