<template lang="pug">
.top
  h1.title
    | Rhoa
    span.version v{{rhoaVersion}}

  p.introduction Rhoa is a Vue.js 2.0 mini no style components for Web.

  usage.usage

  compnent-docs.compnent-docs(:doc-objects="docObjects")
</template>

<script lang="coffee">
import * as rhoa from 'rhoa'
import propDoc from 'propdoc'
import Usage from '@pages/Top/Usage.vue'
import ComponentDocs from '@pages/Top/ComponentDocs.vue'

export default
  components:
    'usage': Usage
    'compnent-docs': ComponentDocs
  data: ->
    rhoaVersion: rhoa.VERSION
    docObjects: [
      {
        doc: propDoc.getDoc(rhoa.SmartLink)
        bin: '<a class="jsbin-embed" href="http://jsbin.com/yopiwav/embed?html,css,output">JS Bin on jsbin.com</a>'
      }
      {
        doc: propDoc.getDoc(rhoa.FlexibleImage)
        bin: '<a class="jsbin-embed" href="http://jsbin.com/xiduqo/embed?html,css,output">JS Bin on jsbin.com</a>'
      }
      {
        doc: propDoc.getDoc(rhoa.SingleSubmitButton)
        bin: '<a class="jsbin-embed" href="http://jsbin.com/bacahad/embed?html,js,output">JS Bin on jsbin.com</a>'
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

  > .usage
    margin-bottom: large-spacing

  > .compnent-docs
    margin-bottom: large-spacing
</style>
