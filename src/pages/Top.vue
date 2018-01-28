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
        bin: """
          <p data-height="265" data-theme-id="0" data-slug-hash="yvBzWr" data-default-tab="html,result" data-user="isuke" data-embed-version="2" data-pen-title="SmartLink" class="codepen">See the Pen <a href="https://codepen.io/isuke/pen/yvBzWr/">SmartLink</a> by isuke (<a href="https://codepen.io/isuke">@isuke</a>) on <a href="https://codepen.io">CodePen</a>.</p>
        """
        sourceUrl: "https://github.com/isuke/rhoa/blob/v#{rhoa.VERSION}/src/components/SmartLink.vue"
      }
      {
        doc: propDoc.getDoc(rhoa.FlexibleImage)
        bin: """
          <p data-height="265" data-theme-id="0" data-slug-hash="QQLqXJ" data-default-tab="html,result" data-user="isuke" data-embed-version="2" data-pen-title="FlexibleImage" class="codepen">See the Pen <a href="https://codepen.io/isuke/pen/QQLqXJ/">FlexibleImage</a> by isuke (<a href="https://codepen.io/isuke">@isuke</a>) on <a href="https://codepen.io">CodePen</a>.</p>
        """
        sourceUrl: "https://github.com/isuke/rhoa/blob/v#{rhoa.VERSION}/src/components/FlexibleImage.vue"
      }
      {
        doc: propDoc.getDoc(rhoa.SingleSubmitButton)
        bin: """
          <p data-height="265" data-theme-id="0" data-slug-hash="bLbYGx" data-default-tab="js,result" data-user="isuke" data-embed-version="2" data-pen-title="SingleSubmitButton" class="codepen">See the Pen <a href="https://codepen.io/isuke/pen/bLbYGx/">SingleSubmitButton</a> by isuke (<a href="https://codepen.io/isuke">@isuke</a>) on <a href="https://codepen.io">CodePen</a>.</p>
        """
        sourceUrl: "https://github.com/isuke/rhoa/blob/v#{rhoa.VERSION}/src/components/SingleSubmitButton.vue"
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
