<template lang="pug">
.component-docs
  h2.title Components

  component-doc.doc(v-for="docObject, index in docObjects", key="docObject.doc.name", :doc="docObject.doc", :bin="docObject.bin")
</template>

<script lang="coffee">
import ComponentDoc from '@components/ComponentDoc.vue'

export default
  components:
    'component-doc': ComponentDoc
  props:
    docObjects:
      type: String
      required: true
</script>

<style lang="stylus" scoped>
.top
  color: default-font-color
  margin-top: small-spacing
  margin-left: large-spacing
  margin-right: large-spacing

  > .title
    > .version
      margin-left: small-spacing
      font-size: base-font-size
      color: dark-gray
</style>
