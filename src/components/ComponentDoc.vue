<template lang="pug">
article.component-doc
  h3.name {{doc.name}}
  h4.introduction {{doc.introduction}}
  pre: code.token.html {{doc.token}}
  .description(v-html="doc.description")
  table.props
    thead.head
      tr.row
        td.name
          | name
          span.required
            | *:required
        td.type type
        td.default default
        td.notes notes
    tbody.body
      tr.row(v-for="(value, key) in doc.props")
        td.name(:class="{'-required': value.required}") {{key}}
        td.type {{value.type}}
        td.default {{value.required ? '-' : value.default}}
        td.notes {{value.note}}
  .bin(v-html="bin", v-if="bin")
  a.source(:href="sourceUrl", v-if="sourceUrl", target="_blank") Source
</template>

<script lang="coffee">
export default
  props:
    doc:
      type: Object
      required: true
    bin:
      tyoe: String
      required: false
      default: null
    sourceUrl:
      tyoe: String
      required: false
      default: null
  methods:
    idName: (baseName) ->
      _.kebabCase baseName.replace(/\./, '-')
</script>

<style lang="stylus" scoped>
.component-doc
  position: relative;
  border: meek-border-size solid dark-gray
  border-radius: base-border-radius
  padding: base-spacing

  > .name
    position: absolute
    top: 0
    left: - small-spacing
    margin: 0
    padding: 0 small-spacing
    background-color: white
    transform: translateY(-50%) translateX(base-spacing)

  > .props
    table()
    width: 100%
    margin-top: base-spacing
    > .head > .row > .name
      > .required
        margin-left: 0.5em
        color: red
    > .head, .body
      > .row > td
        padding: small-spacing

        &.-required
          &:after
            content: ' *'
            color: red
  > .bin
    margin-top: base-spacing
</style>
