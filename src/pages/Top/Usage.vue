<template lang="pug">
.usage
  h2.title Usage
  article.article.cdn
    h3.hedding CDN
    pre: code.html(v-text="usageCDN")
  article.article.npm
    h3.hedding NPM
    pre: code.bash(v-text="usageNPM1")
    pre: code.html(v-text="usageNPM2")
</template>

<script lang="coffee">
export default
  data: ->
    usageCDN: """
      <xscript srt="https://cdn.jsdelivr.net/npm/vue"></xscript>
      <xscript src="https://cdn.jsdelivr.net/npm/rhoa/dist/rhoa.min.js"></xscript>
      <xscript>
        window.Rhoa.install(Vue, {})
      </xscript>
    """.replace /xscript/g, 'script'
    usageNPM1: """
      $ npm install rhoa --save
      # or
      $ yarn add rhoa
    """
    usageNPM2: """
      <template>
        <div class="main">
          <smart-link href="/logout" method="delete" text="Log out" is-reseted-style></smart-link>
        </div>
      </template>

      <xscript>
      import * as rhoa from 'rhoa'

      export default = {
        components: {
          'smart-link': rhoa.SmartLink
        }
      };
      </xscript>
    """.replace /xscript/g, 'script'
</script>

<style lang="stylus" scoped>
.usage
  > .article
    position: relative;
    margin-left: - base-spacing
    margin-right: - base-spacing
    margin-bottom: base-spacing
    border: meek-border-size solid dark-gray
    border-radius: base-border-radius
    padding: base-spacing

    > .hedding
      position: absolute
      top: 0
      left: - small-spacing
      padding: 0 small-spacing
      margin: 0
      background-color: white
      transform: translateY(-50%) translateX(base-spacing)
</style>
