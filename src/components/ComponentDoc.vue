<template lang="pug">
article.component-doc
  h2 {{doc.name}}
  h3 {{doc.introduction}}
  p(v-html="doc.description")
  pre
    code {{doc.token}}
  table
    thead
      tr
        td name
        td type
        td default
        td notes
    tbody
      tr(v-for="(value, key) in doc.props")
        td {{key}} {{value.required ? '*' : ''}}
        td {{value.type}}
        td {{value.required ? '-' : value.default}}
        td {{value.note}}
</template>

<script lang="coffee" scoped>
export default
  props:
    doc:
      type: Object
      required: true
</script>

<style lang="stylus">
.component-doc {}
</style>
