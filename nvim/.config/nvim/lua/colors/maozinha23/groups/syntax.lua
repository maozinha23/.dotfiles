local hl = require("colors.maozinha23.highlight")
local c = require("colors.maozinha23.palette")
-- -----------------------------------------------------------------------------
-- :help group-name
-- -----------------------------------------------------------------------------
-- Any comment
hl.highlight("Comment", { ctermfg = c.bright_black })

-- Any constant
hl.highlight("Constant", { ctermfg = c.white })

-- String constant: "this is a string"
hl.highlight("String", { link = "Constant" })

-- Character constant: 'c', '\n'
hl.highlight("Character", { link = "Constant" })

-- Number constant: 234, 0xff
hl.highlight("Number", { link = "Constant" })

-- Boolean constant: TRUE, false
hl.highlight("Boolean", { link = "Constant" })

-- Floating point constant: 2.3e10
hl.highlight("Float", { link = "Number" })

-- Any variable name
hl.highlight("Identifier", { link = "Constant" })

-- Function name (also: methods for classes)
hl.highlight("Function", { ctermfg = c.bright_blue })

-- Any statement
hl.highlight("Statement", { ctermfg = c.bright_blue })

-- if, then, else, endif, switch, etc.
hl.highlight("Conditional", { link = "Statement" })

-- for, do, while, etc.
hl.highlight("Repeat", { link = "Statement" })

-- case, default, etc.
hl.highlight("Label", { link = "Statement" })

-- "sizeof", "+", "*", etc.
hl.highlight("Operator", { link = "Constant" })

-- Any other keyword
hl.highlight("Keyword", { link = "Statement" })

-- try, catch, throw
hl.highlight("Exception", { link = "Statement" })

-- Generic Preprocessor
hl.highlight("PreProc", { ctermfg = c.bright_blue })

-- Preprocessor #include
hl.highlight("Include", { link = "PreProc" })

-- Preprocessor #define
hl.highlight("Define", { link = "PreProc" })

-- Same as Define
hl.highlight("Macro", { link = "PreProc" })

-- Preprocessor #if, #else, #endif, etc.
hl.highlight("PreCondit", { link = "PreProc" })

-- int, long, char, etc.
hl.highlight("Type", { ctermfg = c.bright_blue })

-- static, register, volatile, etc.
hl.highlight("StorageClass", { link = "Type" })

-- struct, union, enum, etc.
hl.highlight("Structure", { link = "Type" })

-- A typedef
hl.highlight("Typedef", { link = "Type" })

-- Any special symbol
hl.highlight("Special", { ctermfg = c.cyan })

-- Special character in a constant
hl.highlight("SpecialChar", { link = "Special" })

-- You can use CTRL-] on this
hl.highlight("Tag", { link = "Special" })

-- Character that needs attention
hl.highlight("Delimiter", { ctermfg = c.cyan })

-- Special things inside a comment
hl.highlight("SpecialComment", { link = "Special" })

-- Debugging statements
hl.highlight("Debug", { link = "Special" })

-- Text that stands out, HTML links
hl.highlight("Underlined", { underline = true })

-- Left blank, hidden. hl-Ignore
hl.highlight("Ignore", { link = "Normal" })

-- Any erroneous construct
hl.highlight("Error", { ctermfg = c.white, ctermbg = c.red })

-- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
hl.highlight("Todo", { ctermfg = c.black, ctermbg = c.white })

-- Added line in a diff
hl.highlight("Added", { ctermfg = c.green })

-- Changed line in a diff
hl.highlight("Changed", { ctermfg = c.magenta })

-- Removed line in a diff
hl.highlight("Removed", { ctermfg = c.red })
