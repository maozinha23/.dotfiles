local c = require("colors.maozinha23.palette").colors
local hi = require("colors.maozinha23.highlight").highlight
-- -----------------------------------------------------------------------------
-- :help group-name
-- -----------------------------------------------------------------------------
-- Any comment
hi("Comment", { fg = c.bright_black, italic = true })

-- Any constant
hi("Constant", { fg = c.white })

-- String constant: "this is a string"
hi("String", { fg = c.white })

-- Character constant: 'c', '\n'
hi("Character", { link = "Constant" })

-- Number constant: 234, 0xff
hi("Number", { link = "Constant" })

-- Boolean constant: TRUE, false
hi("Boolean", { link = "Constant" })

-- Floating point constant: 2.3e10
hi("Float", { link = "Number" })

-- Any variable name
hi("Identifier", { fg = c.bright_blue })

-- Function name (also: methods for classes)
hi("Function", { fg = c.bright_blue })

-- Any statement
hi("Statement", { fg = c.blue, bold = true })

-- if, then, else, endif, switch, etc.
hi("Conditional", { link = "Statement" })

-- for, do, while, etc.
hi("Repeat", { link = "Statement" })

-- case, default, etc.
hi("Label", { link = "Statement" })

-- "sizeof", "+", "*", etc.
hi("Operator", { fg = c.blue, bold = true })

-- Any other keyword
hi("Keyword", { link = "Statement" })

-- try, catch, throw
hi("Exception", { link = "Statement" })

-- Generic Preprocessor
hi("PreProc", { fg = c.bright_blue, bold = true })

-- Preprocessor #include
hi("Include", { link = "PreProc" })

-- Preprocessor #define
hi("Define", { link = "PreProc" })

-- Same as Define
hi("Macro", { link = "PreProc" })

-- Preprocessor #if, #else, #endif, etc.
hi("PreCondit", { link = "PreProc" })

-- int, long, char, etc.
hi("Type", { fg = c.bright_blue })

-- static, register, volatile, etc.
hi("StorageClass", { link = "Type" })

-- struct, union, enum, etc.
hi("Structure", { link = "Type" })

-- A typedef
hi("Typedef", { link = "Type" })

-- Any special symbol
hi("Special", { fg = c.bright_yellow })

-- Special character in a constant
hi("SpecialChar", { link = "Special" })

-- You can use CTRL-] on this
hi("Tag", { link = "Special" })

-- Character that needs attention
hi("Delimiter", { fg = c.bright_yellow })

-- Special things inside a comment
hi("SpecialComment", { link = "Special" })

-- Debugging statements
hi("Debug", { link = "Special" })

-- Text that stands out, HTML links
hi("Underlined", { underline = true })

-- Left blank, hidden. hl-Ignore
hi("Ignore", { link = "Normal" })

-- Any erroneous construct
hi("Error", { fg = c.bright_white, bg = c.red, bold = true })

-- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
hi("Todo", { fg = c.black, bg = c.yellow, bold = true })

-- Added line in a diff
hi("Added", { fg = c.green })

-- Changed line in a diff
hi("Changed", { fg = c.bright_cyan })

-- Removed line in a diff
hi("Removed", { fg = c.red })
