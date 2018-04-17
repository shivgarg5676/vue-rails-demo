<template>

  <div>
    rendered course page compnent
    <p>
      {{this.name}}
    </p>
  </div>
</template>

<script>
export default {
  data () {
    return {
      name: this.$route.params.program_name
    }
  },
  created () {
  }
}
</script>
