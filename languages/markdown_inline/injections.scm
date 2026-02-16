((code_span) @injection.content
  (#match? @injection.content "\\{[{%#]")
  (#set! injection.language "Jinja"))
