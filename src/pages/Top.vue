<template lang="pug">
.top
  h1.title
    | Rhoa
    span.version v{{rhoaVersion}}

  p Rhoa is a Vue.js 2.0 useful mini components for Web.

  usage

  compnent-doc.doc(v-for="docObject in docObjects", key="docObject.doc.name", :doc="docObject.doc", :bin="docObject.bin")
</template>

<script lang="coffee">
import propDoc from 'propdoc'
import * as rhoa from 'rhoa'
import Usage from '@pages/Top/Usage.vue'
import ComponentDoc from '@components/ComponentDoc.vue'

export default
  components:
    'prop-doc': propDoc
    'compnent-doc': ComponentDoc
    'usage': Usage
  data: ->
    rhoaVersion: rhoa.VERSION
    docObjects:
      [
        {
          doc: propDoc.getDoc(rhoa.SmartLink)
          bin: '<a class="jsbin-embed" href="http://jsbin.com/yopiwav/embed?html,css,output">JS Bin on jsbin.com</a>'
        }
        {
          doc: propDoc.getDoc(rhoa.FlexibleImage)
          bin: '<a class="jsbin-embed" href="http://jsbin.com/xiduqo/embed?html,css,output">JS Bin on jsbin.com</a>'
        }
      ]
  mounted: ->
    hljs.initHighlightingOnLoad()
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
