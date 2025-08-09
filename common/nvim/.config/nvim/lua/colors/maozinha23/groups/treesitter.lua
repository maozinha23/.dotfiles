local c = require("colors.maozinha23.palette").colors
local hi = require("colors.maozinha23.highlight").highlight
-- -----------------------------------------------------------------------------
-- :help treesitter-highlight-groups
-- -----------------------------------------------------------------------------
-- Various variable names
hi("@variable", { link = "Identifier" })

-- Built-in variable names (e.g. 'this', 'self')
hi("@variable.builtin", { link = "Special" })

-- Parameters of a function
hi("@variable.parameter", { link = "@variable" })

-- Special parameters (e.g. '_', 'it')
hi("@variable.parameter.builtin", { link = "Special" })

-- Object and struct fields
hi("@variable.member", { link = "@variable" })

-- Constant identifiers
hi("@constant", { link = "Constant" })

-- Built-in constant values
hi("@constant.builtin", { link = "Special" })

-- Constants defined by the preprocessor
hi("@constant.macro", { link = "Constant" })

-- Modules or namespaces
hi("@module", { link = "Type" })

-- Built-in modules or namespaces
hi("@module.builtin", { link = "Special" })

-- 'GOTO' and other labels (e.g. 'label:' in C), including heredoc labels
hi("@label", { link = "Statement" })

-- String literals
hi("@string", { link = "String" })

-- String documenting code (e.g. Python docstrings)
hi("@string.documentation", { link = "String" })

-- Regular expressions
hi("@string.regexp", { link = "Special" })

-- Escape sequences
hi("@string.escape", { link = "Special" })

-- Other special strings (e.g. dates)
hi("@string.special", { link = "Special" })

-- Symbols or atoms
hi("@string.special.symbol", { link = "Special" })

-- Filenames
hi("@string.special.path", { link = "Special" })

-- URIs (e.g. hyperlinks)
hi("@string.special.url", { link = "Underlined" })

-- Character literals
hi("@character", { link = "Constant" })

-- Special characters (e.g. wildcards)
hi("@character.special", { link = "Special" })

-- Boolean literals
hi("@boolean", { link = "Constant" })

-- Numeric literals
hi("@number", { link = "Constant" })

-- Floating-point number literals
hi("@number.float", { link = "Constant" })

-- Type or class definitions and annotations
hi("@type", { link = "Type" })

-- Built-in types
hi("@type.builtin", { link = "Special" })

-- Identifiers in type definitions (e.g. 'typedef <type> <identifier>' in C)
hi("@type.definition", { link = "Type" })

-- Attribute annotations (e.g. Python decorators, Rust lifetimes)
hi("@attribute", { link = "PreProc" })

-- Builtin annotations (e.g. '@property' in Python)
hi("@attribute.builtin", { link = "Special" })

-- The key in key/value pairs
hi("@property", { link = "Identifier" })

-- Function definitions
hi("@function", { link = "Function" })

-- Built-in functions
hi("@function.builtin", { link = "Special" })

-- Function calls
hi("@function.call", { link = "Function" })

-- Preprocessor macros
hi("@function.macro", { link = "Function" })

-- Method definitions
hi("@function.method", { link = "Function" })

-- Method calls
hi("@function.method.call", { link = "Function" })

-- Constructor calls and definitions
hi("@constructor", { link = "Special" })

-- Symbolic operators (e.g. '+', '*')
hi("@operator", { link = "Operator" })

-- Keywords not fitting into specific categories
hi("@keyword", { link = "Statement" })

-- Keywords related to coroutines (e.g. 'go' in Go, 'async/await' in Python)
hi("@keyword.coroutine", { link = "Statement" })

-- Keywords that define a function (e.g. 'func' in Go, 'def' in Python)
hi("@keyword.function", { link = "Statement" })

-- Operators that are English words (e.g. 'and', 'or')
hi("@keyword.operator", { link = "Statement" })

-- Keywords for including or exporting modules (e.g. 'import', 'from' in Python)
hi("@keyword.import", { link = "Statement" })

-- Keywords describing namespaces and composite types (e.g. 'struct', 'enum')
hi("@keyword.type", { link = "Statement" })

-- Keywords modifying other constructs (e.g. 'const', 'static', 'public')
hi("@keyword.modifier", { link = "Statement" })

-- Keywords related to loops (e.g. 'for', 'while')
hi("@keyword.repeat", { link = "Statement" })

-- Keywords like 'return' and 'yield'
hi("@keyword.return", { link = "Statement" })

-- Keywords related to debugging
hi("@keyword.debug", { link = "Statement" })

-- Keywords related to exceptions (e.g. 'throw', 'catch')
hi("@keyword.exception", { link = "Statement" })

-- Keywords related to conditionals (e.g. 'if', 'else')
hi("@keyword.conditional", { link = "Statement" })

-- Ternary operator (e.g. '?', ':')
hi("@keyword.conditional.ternary", { link = "Statement" })

-- Various preprocessor directives and shebangs
hi("@keyword.directive", { link = "Statement" })

-- Preprocessor definition directives
hi("@keyword.directive.define", { link = "Statement" })

-- Delimiters (e.g. ';', '.', ',')
hi("@punctuation.delimiter", { link = "Delimiter" })

-- Brackets (e.g. '()', '{}', '[]')
hi("@punctuation.bracket", { link = "Delimiter" })

-- Special symbols (e.g. '{}' in string interpolation)
hi("@punctuation.special", { link = "Special" })

-- Line and block comments
hi("@comment", { link = "Comment" })

-- Comments documenting code
hi("@comment.documentation", { link = "Comment" })

-- Error-type comments (e.g. 'ERROR', 'FIXME', 'DEPRECATED')
hi("@comment.error", { link = "DiagnosticError" })

-- Warning-type comments (e.g. 'WARNING', 'FIX', 'HACK')
hi("@comment.warning", { link = "DiagnosticWarn" })

-- Todo-type comments (e.g. 'TODO', 'WIP')
hi("@comment.todo", { link = "Todo" })

-- Note-type comments (e.g. 'NOTE', 'INFO', 'XXX')
hi("@comment.note", { link = "DiagnosticInfo" })

-- Bold text
hi("@markup.strong", { bold = true })

-- Italic text
hi("@markup.italic", { italic = true })

-- Struck-through text
hi("@markup.strikethrough", { strikethrough = true })

-- Underlined text (only for literal underline markup!)
hi("@markup.underline", { underline = true })

-- Headings, titles (including markers)
hi("@markup.heading", { link = "Title" })

-- Top-level heading
hi("@markup.heading.1", { link = "Title" })

-- Section heading
hi("@markup.heading.2", { link = "Title" })

-- Subsection heading
hi("@markup.heading.3", { link = "Title" })

-- And so on
hi("@markup.heading.4", { link = "Title" })

-- And so forth
hi("@markup.heading.5", { link = "Title" })

-- Six levels ought to be enough for anybody
hi("@markup.heading.6", { link = "Title" })

-- Block quotes
hi("@markup.quote", { link = "Special" })

-- Math environments (e.g. '$ ... $' in LaTeX)
hi("@markup.math", { link = "Special" })

-- Text references, footnotes, citations, etc.
hi("@markup.link", { link = "Underlined" })

-- Link, reference descriptions
hi("@markup.link.label", { link = "Underlined" })

-- URL-style links
hi("@markup.link.url", { link = "Underlined" })

-- Literal or verbatim text (e.g. inline code)
hi("@markup.raw", { link = "Special" })

-- Literal or verbatim text as a stand-alone block
hi("@markup.raw.block", { link = "Special" })

-- List markers
hi("@markup.list", { link = "Special" })

-- Checked todo-style list markers
hi("@markup.list.checked", { link = "Special" })

-- Unchecked todo-style list markers
hi("@markup.list.unchecked", { link = "Special" })

-- Added text (for diff files)
hi("@diff.plus", { link = "Added" })

-- Deleted text (for diff files)
hi("@diff.minus", { link = "Removed" })

-- Changed text (for diff files)
hi("@diff.delta", { link = "Changed" })

-- XML-style tag names (e.g. in XML, HTML, etc.)
hi("@tag", { link = "Special" })

-- Builtin tag names (e.g. HTML5 tags)
hi("@tag.builtin", { link = "Special" })

-- XML-style tag attributes
hi("@tag.attribute", { link = "Special" })

-- XML-style tag delimiters
hi("@tag.delimiter", { link = "Special" })
