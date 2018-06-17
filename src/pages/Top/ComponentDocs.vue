<template lang="pug">
.component-docs
  h2.title Components

  component-doc.doc(v-for="docObject, index in docObjects", key="docObject.doc.name", :doc="docObject.doc", :bin="docObject.bin", :source-url="docObject.sourceUrl")
</template>

<script lang="coffee">
import ComponentDoc from '@components/ComponentDoc.vue'

export default
  components:
    'component-doc': ComponentDoc
  props:
    docObjects:
      type: Array
      required: true
</script>

<style lang="stylus" scoped>
.component-docs
  > .title
    > .version
      margin-left: small-spacing
      font-size: base-font-size
      color: dark-gray

  > .doc
    margin-left: - base-spacing
    margin-right: - base-spacing
    margin-bottom: large-spacing
</style>
