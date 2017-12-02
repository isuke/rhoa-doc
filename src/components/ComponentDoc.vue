<template lang="pug">
article.component-doc
  h2.name {{doc.name}}
  h3.introduction {{doc.introduction}}
  p.description(v-html="doc.description")
  pre: code.token.html {{doc.token}}
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
  methods:
    idName: (baseName) ->
      _.kebabCase baseName.replace(/\./, '-')
</script>

<style lang="stylus" scoped>
.component-doc
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
