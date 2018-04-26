<template>
  <div>
    <div>
      {{name}}
    </div>
    <div>
      <router-link to="/data-science">Data scinces</router-link>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      name: 'homepage'
    }
  }
}
</script>
