local hl = require("colors.maozinha23.highlight")
local c = require("colors.maozinha23.palette")
-- -----------------------------------------------------------------------------
-- :help lsp-semantic-highlight
-- -----------------------------------------------------------------------------
-- Identifiers that declare or reference a class type
hl.highlight("@lsp.type.class", { link = "Type" })

-- Tokens that represent a comment
hl.highlight("@lsp.type.comment", { link = "Comment" })

-- Identifiers that declare or reference decorators and annotations
hl.highlight("@lsp.type.decorator", { link = "PreProc" })

-- Identifiers that declare or reference an enumeration type
hl.highlight("@lsp.type.enum", { link = "Type" })

-- Identifiers that declare or reference an enumeration property, constant, or
-- member
hl.highlight("@lsp.type.enumMember", { link = "Constant" })

-- Identifiers that declare an event property
hl.highlight("@lsp.type.event", { link = "Type" })

-- Identifiers that declare a function
hl.highlight("@lsp.type.function", { link = "Function" })

-- Identifiers that declare or reference an interface type
hl.highlight("@lsp.type.interface", { link = "Type" })

-- Tokens that represent a language keyword
hl.highlight("@lsp.type.keyword", { link = "Statement" })

-- Identifiers that declare a macro
hl.highlight("@lsp.type.macro", { link = "Constant" })

-- Identifiers that declare a member function or method
hl.highlight("@lsp.type.method", { link = "Function" })

-- Tokens that represent a modifier
hl.highlight("@lsp.type.modifier", { link = "Type" })

-- Identifiers that declare or reference a namespace, module, or package
hl.highlight("@lsp.type.namespace", { link = "Type" })

-- Tokens that represent a number literal
hl.highlight("@lsp.type.number", { link = "Constant" })

-- Tokens that represent an operator
hl.highlight("@lsp.type.operator", { link = "Operator" })

-- Identifiers that declare or reference a function or method parameters
hl.highlight("@lsp.type.parameter", { link = "@variable" })

-- Identifiers that declare or reference a member property, member field, or
-- member variable
hl.highlight("@lsp.type.property", { link = "Identifier" })

-- Tokens that represent a regular expression literal
hl.highlight("@lsp.type.regexp", { link = "Special" })

-- Tokens that represent a string literal
hl.highlight("@lsp.type.string", { link = "String" })

-- Identifiers that declare or reference a struct type
hl.highlight("@lsp.type.struct", { link = "Type" })

-- Identifiers that declare or reference a type that is not covered above
hl.highlight("@lsp.type.type", { link = "Type" })

-- Identifiers that declare or reference a type parameter
hl.highlight("@lsp.type.typeParameter", { link = "Type" })

-- Identifiers that declare or reference a local or global variable
hl.highlight("@lsp.type.variable", { link = "@variable" })

-- Types and member functions that are abstract
hl.highlight("@lsp.mod.abstract", { link = "@lsp" })

-- Functions that are marked async
hl.highlight("@lsp.mod.async", { link = "@lsp" })

-- Declarations of symbols
hl.highlight("@lsp.mod.declaration", { link = "@lsp" })

-- Symbols that are part of the standard library
hl.highlight("@lsp.mod.defaultLibrary", { link = "@lsp" })

-- Definitions of symbols, for example, in header files
hl.highlight("@lsp.mod.definition", { link = "@lsp" })

-- Symbols that should no longer be used
hl.highlight("@lsp.mod.deprecated", { link = "DiagnosticDeprecated" })

-- Occurrences of symbols in documentation
hl.highlight("@lsp.mod.documentation", { link = "@lsp" })

-- Variable references where the variable is assigned to
hl.highlight("@lsp.mod.modification", { link = "@lsp" })

-- Readonly variables and member fields (constants)
hl.highlight("@lsp.mod.readonly", { link = "@lsp" })

-- Class members (static members)
hl.highlight("@lsp.mod.static", { link = "@lsp" })
