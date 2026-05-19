-- -----------------------------------------------------------------------------
-- :help lsp-semantic-highlight
-- -----------------------------------------------------------------------------
return function(palette)
  return {
    -- Identifiers that declare or reference a class type
    ["@lsp.type.class"] = { link = "Type" },

    -- Tokens that represent a comment
    ["@lsp.type.comment"] = { link = "Comment" },

    -- Identifiers that declare or reference decorators and annotations
    ["@lsp.type.decorator"] = { link = "PreProc" },

    -- Identifiers that declare or reference an enumeration type
    ["@lsp.type.enum"] = { link = "Type" },

    -- Identifiers that declare or reference an enumeration property, constant,
    -- or member
    ["@lsp.type.enumMember"] = { link = "Constant" },

    -- Identifiers that declare an event property
    ["@lsp.type.event"] = { link = "Type" },

    -- Identifiers that declare a function
    ["@lsp.type.function"] = { link = "Function" },

    -- Identifiers that declare or reference an interface type
    ["@lsp.type.interface"] = { link = "Type" },

    -- Tokens that represent a language keyword
    ["@lsp.type.keyword"] = { link = "Statement" },

    -- Identifiers that declare a macro
    ["@lsp.type.macro"] = { link = "Constant" },

    -- Identifiers that declare a member function or method
    ["@lsp.type.method"] = { link = "Function" },

    -- Tokens that represent a modifier
    ["@lsp.type.modifier"] = { link = "Type" },

    -- Identifiers that declare or reference a namespace, module, or package
    ["@lsp.type.namespace"] = { link = "Type" },

    -- Tokens that represent a number literal
    ["@lsp.type.number"] = { link = "Constant" },

    -- Tokens that represent an operator
    ["@lsp.type.operator"] = { link = "Operator" },

    -- Identifiers that declare or reference a function or method parameters
    ["@lsp.type.parameter"] = { link = "@variable" },

    -- Identifiers that declare or reference a member property, member field, or
    -- member variable
    ["@lsp.type.property"] = { link = "Identifier" },

    -- Tokens that represent a regular expression literal
    ["@lsp.type.regexp"] = { link = "Special" },

    -- Tokens that represent a string literal
    ["@lsp.type.string"] = { link = "String" },

    -- Identifiers that declare or reference a struct type
    ["@lsp.type.struct"] = { link = "Type" },

    -- Identifiers that declare or reference a type that is not covered above
    ["@lsp.type.type"] = { link = "Type" },

    -- Identifiers that declare or reference a type parameter
    ["@lsp.type.typeParameter"] = { link = "Type" },

    -- Identifiers that declare or reference a local or global variable
    ["@lsp.type.variable"] = { link = "@variable" },

    -- Types and member functions that are abstract
    ["@lsp.mod.abstract"] = { link = "@lsp" },

    -- Functions that are marked async
    ["@lsp.mod.async"] = { link = "@lsp" },

    -- Declarations of symbols
    ["@lsp.mod.declaration"] = { link = "@lsp" },

    -- Symbols that are part of the standard library
    ["@lsp.mod.defaultLibrary"] = { link = "@lsp" },

    -- Definitions of symbols, for example, in header files
    ["@lsp.mod.definition"] = { link = "@lsp" },

    -- Symbols that should no longer be used
    ["@lsp.mod.deprecated"] = { link = "DiagnosticDeprecated" },

    -- Occurrences of symbols in documentation
    ["@lsp.mod.documentation"] = { link = "@lsp" },

    -- Variable references where the variable is assigned to
    ["@lsp.mod.modification"] = { link = "@lsp" },

    -- Readonly variables and member fields (constants)
    ["@lsp.mod.readonly"] = { link = "@lsp" },

    -- Class members (static members)
    ["@lsp.mod.static"] = { link = "@lsp" },
  }
end
