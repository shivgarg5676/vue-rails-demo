<script>
import Vue from 'vue';
const compiler =  require("vue-template-compiler");

export default {
  data () {
    return {
      template: '',
      staticTempFunctions: [],
    }
  },
  render: function (createElement) {
    if (!this.template) {
      return createElement('div', 'Loading...')
    } else {
      return this.template()
    }
  },
  props: ['rhtml'],
  inheritAttrs: false,
  watch: {
    rhtml: {
      immediate: true,
      handler () {
        let rhtml = this.rhtml.replace(/{{(.+?)}}/, "{{this.$attrs.$1}}");
        var res = compiler.compileToFunctions(rhtml)
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
