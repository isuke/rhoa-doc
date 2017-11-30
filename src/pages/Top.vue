<template lang="pug">
.top
  h1 Rhoa
  compnent-doc(v-for="doc in docs", key="doc.name", :doc="doc")
</template>

<script lang="coffee" scoped>
import propDoc from 'propdoc'
import * as rhoa from 'rhoa'
import ComponentDoc from '@components/ComponentDoc.vue'

export default
  components:
    'prop-doc': propDoc
    'compnent-doc': ComponentDoc
  computed:
    docs: ->
      [
        propDoc.getDoc(rhoa.SmartLink)
      ]
</script>

<style lang="stylus">
.top {}
</style>
