-- -----------------------------------------------------------------------------
-- :help treesitter-highlight-groups
-- -----------------------------------------------------------------------------
return function(palette)
  return {
    -- Various variable names
    ["@variable"] = { link = "Identifier" },

    -- Built-in variable names (e.g. 'this', 'self')
    ["@variable.builtin"] = { link = "Special" },

    -- Parameters of a function
    ["@variable.parameter"] = { link = "@variable" },

    -- Special parameters (e.g. '_', 'it')
    ["@variable.parameter.builtin"] = { link = "Special" },

    -- Object and struct fields
    ["@variable.member"] = { link = "@variable" },

    -- Constant identifiers
    ["@constant"] = { link = "Constant" },

    -- Built-in constant values
    ["@constant.builtin"] = { link = "Special" },

    -- Constants defined by the preprocessor
    ["@constant.macro"] = { link = "Constant" },

    -- Modules or namespaces
    ["@module"] = { link = "Type" },

    -- Built-in modules or namespaces
    ["@module.builtin"] = { link = "Special" },

    -- 'GOTO' and other labels (e.g. 'label:' in C), including heredoc labels
    ["@label"] = { link = "Statement" },

    -- String literals
    ["@string"] = { link = "String" },

    -- String documenting code (e.g. Python docstrings)
    ["@string.documentation"] = { link = "String" },

    -- Regular expressions
    ["@string.regexp"] = { link = "Special" },

    -- Escape sequences
    ["@string.escape"] = { link = "Special" },

    -- Other special strings (e.g. dates)
    ["@string.special"] = { link = "Special" },

    -- Symbols or atoms
    ["@string.special.symbol"] = { link = "Special" },

    -- Filenames
    ["@string.special.path"] = { link = "Special" },

    -- URIs (e.g. hyperlinks)
    ["@string.special.url"] = { link = "Underlined" },

    -- Character literals
    ["@character"] = { link = "Constant" },

    -- Special characters (e.g. wildcards)
    ["@character.special"] = { link = "Special" },

    -- Boolean literals
    ["@boolean"] = { link = "Constant" },

    -- Numeric literals
    ["@number"] = { link = "Constant" },

    -- Floating-point number literals
    ["@number.float"] = { link = "Constant" },

    -- Type or class definitions and annotations
    ["@type"] = { link = "Type" },

    -- Built-in types
    ["@type.builtin"] = { link = "Special" },

    -- Identifiers in type definitions (e.g. 'typedef <type> <identifier>' in C)
    ["@type.definition"] = { link = "Type" },

    -- Attribute annotations (e.g. Python decorators, Rust lifetimes)
    ["@attribute"] = { link = "PreProc" },

    -- Builtin annotations (e.g. '@property' in Python)
    ["@attribute.builtin"] = { link = "Special" },

    -- The key in key/value pairs
    ["@property"] = { link = "Identifier" },

    -- Function definitions
    ["@function"] = { link = "Function" },

    -- Built-in functions
    ["@function.builtin"] = { link = "Special" },

    -- Function calls
    ["@function.call"] = { link = "Function" },

    -- Preprocessor macros
    ["@function.macro"] = { link = "Function" },

    -- Method definitions
    ["@function.method"] = { link = "Function" },

    -- Method calls
    ["@function.method.call"] = { link = "Function" },

    -- Constructor calls and definitions
    ["@constructor"] = { link = "Special" },

    -- Symbolic operators (e.g. '+', '*')
    ["@operator"] = { link = "Operator" },

    -- Keywords not fitting into specific categories
    ["@keyword"] = { link = "Statement" },

    -- Keywords related to coroutines (e.g. 'go' in Go, 'async/await' in Python)
    ["@keyword.coroutine"] = { link = "Statement" },

    -- Keywords that define a function (e.g. 'func' in Go, 'def' in Python)
    ["@keyword.function"] = { link = "Statement" },

    -- Operators that are English words (e.g. 'and', 'or')
    ["@keyword.operator"] = { link = "Statement" },

    -- Keywords for including or exporting modules (e.g. 'import', 'from' in Python)
    ["@keyword.import"] = { link = "Statement" },

    -- Keywords describing namespaces and composite types (e.g. 'struct', 'enum')
    ["@keyword.type"] = { link = "Statement" },

    -- Keywords modifying other constructs (e.g. 'const', 'static', 'public')
    ["@keyword.modifier"] = { link = "Statement" },

    -- Keywords related to loops (e.g. 'for', 'while')
    ["@keyword.repeat"] = { link = "Statement" },

    -- Keywords like 'return' and 'yield'
    ["@keyword.return"] = { link = "Statement" },

    -- Keywords related to debugging
    ["@keyword.debug"] = { link = "Statement" },

    -- Keywords related to exceptions (e.g. 'throw', 'catch')
    ["@keyword.exception"] = { link = "Statement" },

    -- Keywords related to conditionals (e.g. 'if', 'else')
    ["@keyword.conditional"] = { link = "Statement" },

    -- Ternary operator (e.g. '?', ':')
    ["@keyword.conditional.ternary"] = { link = "Statement" },

    -- Various preprocessor directives and shebangs
    ["@keyword.directive"] = { link = "Statement" },

    -- Preprocessor definition directives
    ["@keyword.directive.define"] = { link = "Statement" },

    -- Delimiters (e.g. ';', '.', ',')
    ["@punctuation.delimiter"] = { link = "Delimiter" },

    -- Brackets (e.g. '()', '{}', '[]')
    ["@punctuation.bracket"] = { link = "Delimiter" },

    -- Special symbols (e.g. '{}' in string interpolation)
    ["@punctuation.special"] = { link = "Special" },

    -- Line and block comments
    ["@comment"] = { link = "Comment" },

    -- Comments documenting code
    ["@comment.documentation"] = { link = "Comment" },

    -- Error-type comments (e.g. 'ERROR', 'FIXME', 'DEPRECATED')
    ["@comment.error"] = { link = "DiagnosticError" },

    -- Warning-type comments (e.g. 'WARNING', 'FIX', 'HACK')
    ["@comment.warning"] = { link = "DiagnosticWarn" },

    -- Todo-type comments (e.g. 'TODO', 'WIP')
    ["@comment.todo"] = { link = "Todo" },

    -- Note-type comments (e.g. 'NOTE', 'INFO', 'XXX')
    ["@comment.note"] = { link = "DiagnosticInfo" },

    -- Bold text
    ["@markup.strong"] = { bold = true },

    -- Italic text
    ["@markup.italic"] = { italic = true },

    -- Struck-through text
    ["@markup.strikethrough"] = { strikethrough = true },

    -- Underlined text (only for literal underline markup!)
    ["@markup.underline"] = { underline = true },

    -- Headings, titles (including markers)
    ["@markup.heading"] = { link = "Title" },

    -- Top-level heading
    ["@markup.heading.1"] = { link = "Title" },

    -- Section heading
    ["@markup.heading.2"] = { link = "Title" },

    -- Subsection heading
    ["@markup.heading.3"] = { link = "Title" },

    -- And so on
    ["@markup.heading.4"] = { link = "Title" },

    -- And so forth
    ["@markup.heading.5"] = { link = "Title" },

    -- Six levels ought to be enough for anybody
    ["@markup.heading.6"] = { link = "Title" },

    -- Block quotes
    ["@markup.quote"] = { link = "Special" },

    -- Math environments (e.g. '$ ... $' in LaTeX)
    ["@markup.math"] = { link = "Special" },

    -- Text references, footnotes, citations, etc.
    ["@markup.link"] = { link = "Underlined" },

    -- Link, reference descriptions
    ["@markup.link.label"] = { link = "Underlined" },

    -- URL-style links
    ["@markup.link.url"] = { link = "Underlined" },

    -- Literal or verbatim text (e.g. inline code)
    ["@markup.raw"] = { link = "Special" },

    -- Literal or verbatim text as a stand-alone block
    ["@markup.raw.block"] = { link = "Special" },

    -- List markers
    ["@markup.list"] = { link = "Special" },

    -- Checked todo-style list markers
    ["@markup.list.checked"] = { link = "Special" },

    -- Unchecked todo-style list markers
    ["@markup.list.unchecked"] = { link = "Special" },

    -- Added text (for diff files)
    ["@diff.plus"] = { link = "Added" },

    -- Deleted text (for diff files)
    ["@diff.minus"] = { link = "Removed" },

    -- Changed text (for diff files)
    ["@diff.delta"] = { link = "Changed" },

    -- XML-style tag names (e.g. in XML, HTML, etc.)
    ["@tag"] = { link = "Special" },

    -- Builtin tag names (e.g. HTML5 tags)
    ["@tag.builtin"] = { link = "Special" },

    -- XML-style tag attributes
    ["@tag.attribute"] = { link = "Special" },

    -- XML-style tag delimiters
    ["@tag.delimiter"] = { link = "Special" },
  }
end
