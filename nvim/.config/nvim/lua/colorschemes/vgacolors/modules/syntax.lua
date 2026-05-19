-- -----------------------------------------------------------------------------
-- :help group-name
-- -----------------------------------------------------------------------------
return function(palette)
  return {
    -- Any comment
    Comment = { ctermfg = palette.bright_black },

    -- Any constant
    Constant = { ctermfg = palette.white },

    -- String constant: "this is a string"
    String = { link = "Constant" },

    -- Character constant: 'c', '\n'
    Character = { link = "Constant" },

    -- Number constant: 234, 0xff
    Number = { link = "Constant" },

    -- Boolean constant: TRUE, false
    Boolean = { link = "Constant" },

    -- Floating point constant: 2.3e10
    Float = { link = "Number" },

    -- Any variable name
    Identifier = { link = "Constant" },

    -- Function name (also: methods for classes)
    Function = { ctermfg = palette.bright_blue },

    -- Any statement
    Statement = { ctermfg = palette.bright_blue },

    -- if, then, else, endif, switch, etpalette.
    Conditional = { link = "Statement" },

    -- for, do, while, etpalette.
    Repeat = { link = "Statement" },

    -- case, default, etpalette.
    Label = { link = "Statement" },

    -- "sizeof", "+", "*", etpalette.
    Operator = { link = "Constant" },

    -- Any other keyword
    Keyword = { link = "Statement" },

    -- try, catch, throw
    Exception = { link = "Statement" },

    -- Generic Preprocessor
    PreProc = { ctermfg = palette.bright_blue },

    -- Preprocessor #include
    Include = { link = "PreProc" },

    -- Preprocessor #define
    Define = { link = "PreProc" },

    -- Same as Define
    Macro = { link = "PreProc" },

    -- Preprocessor #if, #else, #endif, etpalette.
    PreCondit = { link = "PreProc" },

    -- int, long, char, etpalette.
    Type = { ctermfg = palette.bright_blue },

    -- static, register, volatile, etpalette.
    StorageClass = { link = "Type" },

    -- struct, union, enum, etpalette.
    Structure = { link = "Type" },

    -- A typedef
    Typedef = { link = "Type" },

    -- Any special symbol
    Special = { ctermfg = palette.cyan },

    -- Special character in a constant
    SpecialChar = { link = "Special" },

    -- You can use CTRL-] on this
    Tag = { link = "Special" },

    -- Character that needs attention
    Delimiter = { ctermfg = palette.cyan },

    -- Special things inside a comment
    SpecialComment = { link = "Special" },

    -- Debugging statements
    Debug = { link = "Special" },

    -- Text that stands out, HTML links
    Underlined = { underline = true },

    -- Left blank, hidden. hl-Ignore
    Ignore = { link = "Normal" },

    -- Any erroneous construct
    Error = { ctermfg = palette.white, ctermbg = palette.red },

    -- Anything that needs extra attention; mostly the keywords TODO FIXME and
    -- XXX
    Todo = { ctermfg = palette.black, ctermbg = palette.white },

    -- Added line in a diff
    Added = { ctermfg = palette.green },

    -- Changed line in a diff
    Changed = { ctermfg = palette.magenta },

    -- Removed line in a diff
    Removed = { ctermfg = palette.red },
  }
end
