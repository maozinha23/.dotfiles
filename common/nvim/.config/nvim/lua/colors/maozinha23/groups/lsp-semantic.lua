local c = require("colors.maozinha23.palette").colors
local hi = require("colors.maozinha23.highlight").highlight
-- -----------------------------------------------------------------------------
-- :help lsp-semantic-highlight
-- -----------------------------------------------------------------------------
-- Identifiers that declare or reference a class type
hi("@lsp.type.class", { link = "Type" })

-- Tokens that represent a comment
hi("@lsp.type.comment", { link = "Comment" })

-- Identifiers that declare or reference decorators and annotations
hi("@lsp.type.decorator", { link = "PreProc" })

-- Identifiers that declare or reference an enumeration type
hi("@lsp.type.enum", { link = "Type" })

-- Identifiers that declare or reference an enumeration property, constant, or
-- member
hi("@lsp.type.enumMember", { link = "Constant" })

-- Identifiers that declare an event property
hi("@lsp.type.event", { link = "Type" })

-- Identifiers that declare a function
hi("@lsp.type.function", { link = "Function" })

-- Identifiers that declare or reference an interface type
hi("@lsp.type.interface", { link = "Type" })

-- Tokens that represent a language keyword
hi("@lsp.type.keyword", { link = "Statement" })

-- Identifiers that declare a macro
hi("@lsp.type.macro", { link = "Constant" })

-- Identifiers that declare a member function or method
hi("@lsp.type.method", { link = "Function" })

-- Tokens that represent a modifier
hi("@lsp.type.modifier", { link = "Type" })

-- Identifiers that declare or reference a namespace, module, or package
hi("@lsp.type.namespace", { link = "Type" })

-- Tokens that represent a number literal
hi("@lsp.type.number", { link = "Constant" })

-- Tokens that represent an operator
hi("@lsp.type.operator", { link = "Operator" })

-- Identifiers that declare or reference a function or method parameters
hi("@lsp.type.parameter", { link = "@variable" })

-- Identifiers that declare or reference a member property, member field, or
-- member variable
hi("@lsp.type.property", { link = "Identifier" })

-- Tokens that represent a regular expression literal
hi("@lsp.type.regexp", { link = "Special" })

-- Tokens that represent a string literal
hi("@lsp.type.string", { link = "String" })

-- Identifiers that declare or reference a struct type
hi("@lsp.type.struct", { link = "Type" })

-- Identifiers that declare or reference a type that is not covered above
hi("@lsp.type.type", { link = "Type" })

-- Identifiers that declare or reference a type parameter
hi("@lsp.type.typeParameter", { link = "Type" })

-- Identifiers that declare or reference a local or global variable
hi("@lsp.type.variable", { link = "@variable" })

-- Types and member functions that are abstract
hi("@lsp.mod.abstract", { link = "@lsp" })

-- Functions that are marked async
hi("@lsp.mod.async", { link = "@lsp" })

-- Declarations of symbols
hi("@lsp.mod.declaration", { link = "@lsp" })

-- Symbols that are part of the standard library
hi("@lsp.mod.defaultLibrary", { link = "@lsp" })

-- Definitions of symbols, for example, in header files
hi("@lsp.mod.definition", { link = "@lsp" })

-- Symbols that should no longer be used
hi("@lsp.mod.deprecated", { link = "DiagnosticDeprecated" })

-- Occurrences of symbols in documentation
hi("@lsp.mod.documentation", { link = "@lsp" })

-- Variable references where the variable is assigned to
hi("@lsp.mod.modification", { link = "@lsp" })

-- Readonly variables and member fields (constants)
hi("@lsp.mod.readonly", { link = "@lsp" })

-- Class members (static members)
hi("@lsp.mod.static", { link = "@lsp" })
