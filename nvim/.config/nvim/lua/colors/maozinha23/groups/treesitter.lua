local hl = require("colors.maozinha23.highlight")
local c = require("colors.maozinha23.palette")
-- -----------------------------------------------------------------------------
-- :help treesitter-highlight-groups
-- -----------------------------------------------------------------------------
-- Various variable names
hl.highlight("@variable", { link = "Identifier" })

-- Built-in variable names (e.g. 'this', 'self')
hl.highlight("@variable.builtin", { link = "Special" })

-- Parameters of a function
hl.highlight("@variable.parameter", { link = "@variable" })

-- Special parameters (e.g. '_', 'it')
hl.highlight("@variable.parameter.builtin", { link = "Special" })

-- Object and struct fields
hl.highlight("@variable.member", { link = "@variable" })

-- Constant identifiers
hl.highlight("@constant", { link = "Constant" })

-- Built-in constant values
hl.highlight("@constant.builtin", { link = "Special" })

-- Constants defined by the preprocessor
hl.highlight("@constant.macro", { link = "Constant" })

-- Modules or namespaces
hl.highlight("@module", { link = "Type" })

-- Built-in modules or namespaces
hl.highlight("@module.builtin", { link = "Special" })

-- 'GOTO' and other labels (e.g. 'label:' in C), including heredoc labels
hl.highlight("@label", { link = "Statement" })

-- String literals
hl.highlight("@string", { link = "String" })

-- String documenting code (e.g. Python docstrings)
hl.highlight("@string.documentation", { link = "String" })

-- Regular expressions
hl.highlight("@string.regexp", { link = "Special" })

-- Escape sequences
hl.highlight("@string.escape", { link = "Special" })

-- Other special strings (e.g. dates)
hl.highlight("@string.special", { link = "Special" })

-- Symbols or atoms
hl.highlight("@string.special.symbol", { link = "Special" })

-- Filenames
hl.highlight("@string.special.path", { link = "Special" })

-- URIs (e.g. hyperlinks)
hl.highlight("@string.special.url", { link = "Underlined" })

-- Character literals
hl.highlight("@character", { link = "Constant" })

-- Special characters (e.g. wildcards)
hl.highlight("@character.special", { link = "Special" })

-- Boolean literals
hl.highlight("@boolean", { link = "Constant" })

-- Numeric literals
hl.highlight("@number", { link = "Constant" })

-- Floating-point number literals
hl.highlight("@number.float", { link = "Constant" })

-- Type or class definitions and annotations
hl.highlight("@type", { link = "Type" })

-- Built-in types
hl.highlight("@type.builtin", { link = "Special" })

-- Identifiers in type definitions (e.g. 'typedef <type> <identifier>' in C)
hl.highlight("@type.definition", { link = "Type" })

-- Attribute annotations (e.g. Python decorators, Rust lifetimes)
hl.highlight("@attribute", { link = "PreProc" })

-- Builtin annotations (e.g. '@property' in Python)
hl.highlight("@attribute.builtin", { link = "Special" })

-- The key in key/value pairs
hl.highlight("@property", { link = "Identifier" })

-- Function definitions
hl.highlight("@function", { link = "Function" })

-- Built-in functions
hl.highlight("@function.builtin", { link = "Special" })

-- Function calls
hl.highlight("@function.call", { link = "Function" })

-- Preprocessor macros
hl.highlight("@function.macro", { link = "Function" })

-- Method definitions
hl.highlight("@function.method", { link = "Function" })

-- Method calls
hl.highlight("@function.method.call", { link = "Function" })

-- Constructor calls and definitions
hl.highlight("@constructor", { link = "Special" })

-- Symbolic operators (e.g. '+', '*')
hl.highlight("@operator", { link = "Operator" })

-- Keywords not fitting into specific categories
hl.highlight("@keyword", { link = "Statement" })

-- Keywords related to coroutines (e.g. 'go' in Go, 'async/await' in Python)
hl.highlight("@keyword.coroutine", { link = "Statement" })

-- Keywords that define a function (e.g. 'func' in Go, 'def' in Python)
hl.highlight("@keyword.function", { link = "Statement" })

-- Operators that are English words (e.g. 'and', 'or')
hl.highlight("@keyword.operator", { link = "Statement" })

-- Keywords for including or exporting modules (e.g. 'import', 'from' in Python)
hl.highlight("@keyword.import", { link = "Statement" })

-- Keywords describing namespaces and composite types (e.g. 'struct', 'enum')
hl.highlight("@keyword.type", { link = "Statement" })

-- Keywords modifying other constructs (e.g. 'const', 'static', 'public')
hl.highlight("@keyword.modifier", { link = "Statement" })

-- Keywords related to loops (e.g. 'for', 'while')
hl.highlight("@keyword.repeat", { link = "Statement" })

-- Keywords like 'return' and 'yield'
hl.highlight("@keyword.return", { link = "Statement" })

-- Keywords related to debugging
hl.highlight("@keyword.debug", { link = "Statement" })

-- Keywords related to exceptions (e.g. 'throw', 'catch')
hl.highlight("@keyword.exception", { link = "Statement" })

-- Keywords related to conditionals (e.g. 'if', 'else')
hl.highlight("@keyword.conditional", { link = "Statement" })

-- Ternary operator (e.g. '?', ':')
hl.highlight("@keyword.conditional.ternary", { link = "Statement" })

-- Various preprocessor directives and shebangs
hl.highlight("@keyword.directive", { link = "Statement" })

-- Preprocessor definition directives
hl.highlight("@keyword.directive.define", { link = "Statement" })

-- Delimiters (e.g. ';', '.', ',')
hl.highlight("@punctuation.delimiter", { link = "Delimiter" })

-- Brackets (e.g. '()', '{}', '[]')
hl.highlight("@punctuation.bracket", { link = "Delimiter" })

-- Special symbols (e.g. '{}' in string interpolation)
hl.highlight("@punctuation.special", { link = "Special" })

-- Line and block comments
hl.highlight("@comment", { link = "Comment" })

-- Comments documenting code
hl.highlight("@comment.documentation", { link = "Comment" })

-- Error-type comments (e.g. 'ERROR', 'FIXME', 'DEPRECATED')
hl.highlight("@comment.error", { link = "DiagnosticError" })

-- Warning-type comments (e.g. 'WARNING', 'FIX', 'HACK')
hl.highlight("@comment.warning", { link = "DiagnosticWarn" })

-- Todo-type comments (e.g. 'TODO', 'WIP')
hl.highlight("@comment.todo", { link = "Todo" })

-- Note-type comments (e.g. 'NOTE', 'INFO', 'XXX')
hl.highlight("@comment.note", { link = "DiagnosticInfo" })

-- Bold text
hl.highlight("@markup.strong", { bold = true })

-- Italic text
hl.highlight("@markup.italic", { italic = true })

-- Struck-through text
hl.highlight("@markup.strikethrough", { strikethrough = true })

-- Underlined text (only for literal underline markup!)
hl.highlight("@markup.underline", { underline = true })

-- Headings, titles (including markers)
hl.highlight("@markup.heading", { link = "Title" })

-- Top-level heading
hl.highlight("@markup.heading.1", { link = "Title" })

-- Section heading
hl.highlight("@markup.heading.2", { link = "Title" })

-- Subsection heading
hl.highlight("@markup.heading.3", { link = "Title" })

-- And so on
hl.highlight("@markup.heading.4", { link = "Title" })

-- And so forth
hl.highlight("@markup.heading.5", { link = "Title" })

-- Six levels ought to be enough for anybody
hl.highlight("@markup.heading.6", { link = "Title" })

-- Block quotes
hl.highlight("@markup.quote", { link = "Special" })

-- Math environments (e.g. '$ ... $' in LaTeX)
hl.highlight("@markup.math", { link = "Special" })

-- Text references, footnotes, citations, etc.
hl.highlight("@markup.link", { link = "Underlined" })

-- Link, reference descriptions
hl.highlight("@markup.link.label", { link = "Underlined" })

-- URL-style links
hl.highlight("@markup.link.url", { link = "Underlined" })

-- Literal or verbatim text (e.g. inline code)
hl.highlight("@markup.raw", { link = "Special" })

-- Literal or verbatim text as a stand-alone block
hl.highlight("@markup.raw.block", { link = "Special" })

-- List markers
hl.highlight("@markup.list", { link = "Special" })

-- Checked todo-style list markers
hl.highlight("@markup.list.checked", { link = "Special" })

-- Unchecked todo-style list markers
hl.highlight("@markup.list.unchecked", { link = "Special" })

-- Added text (for diff files)
hl.highlight("@diff.plus", { link = "Added" })

-- Deleted text (for diff files)
hl.highlight("@diff.minus", { link = "Removed" })

-- Changed text (for diff files)
hl.highlight("@diff.delta", { link = "Changed" })

-- XML-style tag names (e.g. in XML, HTML, etc.)
hl.highlight("@tag", { link = "Special" })

-- Builtin tag names (e.g. HTML5 tags)
hl.highlight("@tag.builtin", { link = "Special" })

-- XML-style tag attributes
hl.highlight("@tag.attribute", { link = "Special" })

-- XML-style tag delimiters
hl.highlight("@tag.delimiter", { link = "Special" })
