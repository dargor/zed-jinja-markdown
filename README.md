# Jinja flavored Markdown for Zed

A [Zed](https://zed.dev) extension that provides syntax highlighting for **Jinja** templating language combined with **Markdown** support.

## Purpose

When working with LLM prompts, you often need to inject dynamic content. While LLMs can handle Markdown's basic structure well, these are static files that require manual context injection. This can be as straightforward as simple string formatting, but can quickly become cumbersome when you need to iterate through data or apply conditional logic.

Instead of manually handling these injections, why not leverage Jinja's powerful templating capabilities ? Jinja can efficiently manage context injection, including conversation history, tool definitions, and user queries, with features like loops and conditionals that make the whole process much more manageable.

An additional benefit: prompts can now be version-controlled separately from code, eliminating the need for mixed content.

## Installation

_NB: the extension is not yet published, install as a dev extension for now._

Install this extension directly in Zed:

1. Open Zed
2. Go to **Extensions** (cmd+shift+X on macOS, ctrl+shift+X on Linux/Windows)
3. Search for `Jinja flavored Markdown`
4. Click **Install**

Or install as a [dev extension](https://zed.dev/docs/extensions/developing-extensions).

## Supported Languages

This extension provides syntax highlighting for the following language modes:

- **Jinja** - Pure Jinja templates (`*.jinja`, `*.jinja2`, `*.j2`)
- **Jinja flavored Markdown** - Markdown files with embedded Jinja syntax (`*.md.j2`)

## Contributing

If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

## License

This extension is licensed under the [MIT License](LICENSE).

## Resources

This extension uses the following Tree-sitter grammars for accurate parsing:

- [tree-sitter-markdown](https://github.com/tree-sitter-grammars/tree-sitter-markdown) - Markdown grammar
- [tree-sitter-jinja](https://github.com/cathaysia/tree-sitter-jinja) - Jinja grammar
