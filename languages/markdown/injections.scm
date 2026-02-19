((inline) @injection.content
  (#set! injection.language "Jinja Markdown (Markdown Inline)"))

((inline) @injection.content
  (#match? @injection.content "\\{[{%#]")
  (#set! injection.language "Jinja"))

(fenced_code_block
  (info_string
    (language) @injection.language)
  (code_fence_content) @injection.content
  (#not-match? @injection.language "^(bash|sh|python|py)$"))

(fenced_code_block
  (info_string
    (language) @injection.language)
  (code_fence_content) @injection.content
  (#match? @injection.language "^(bash|sh)$")
  (#set! injection.language "Jinja Markdown (Bash)"))

(fenced_code_block
  (info_string
    (language) @injection.language)
  (code_fence_content) @injection.content
  (#match? @injection.language "^(python|py)$")
  (#set! injection.language "Jinja Markdown (Python)"))

((code_fence_content) @injection.content
  (#match? @injection.content "\\{[{%#]")
  (#set! injection.language "Jinja"))

((html_block) @injection.content
  (#set! injection.language "html"))

((html_block) @injection.content
  (#match? @injection.content "\\{[{%#]")
  (#set! injection.language "Jinja"))
