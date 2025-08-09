local c = require("colors.maozinha23.palette").colors
local hi = require("colors.maozinha23.highlight").highlight
-- -----------------------------------------------------------------------------
-- :help fzf-lua-highlight-groups
-- -----------------------------------------------------------------------------
-- Main win "fg/bg"
hi("FzfLuaNormal", { link = "Normal" })

-- Main win border
hi("FzfLuaBorder", { link = "Normal" })

-- Main win title
hi("FzfLuaTitle", { link = "FzfLuaNormal" })

-- Main win title flags
hi("FzfLuaTitleFlags", { link = "CursorLine" })

-- Backdrop color
hi("FzfLuaBackdrop", { bg = c.black })

-- Builtin preview "fg/bg"
hi("FzfLuaPreviewNormal", { link = "FzfLuaNormal" })

-- Builtin preview border
hi("FzfLuaPreviewBorder", { link = "FzfLuaBorder" })

-- Builtin preview title
hi("FzfLuaPreviewTitle", { link = "FzfLuaTitle" })

-- Builtin preview "Cursor"
hi("FzfLuaCursor", { link = "Cursor" })

-- Builtin preview "Cursorline"
hi("FzfLuaCursorLine", { link = "CursorLine" })

-- Builtin preview "CursorLineNr"
hi("FzfLuaCursorLineNr", { link = "CursorLineNr" })

-- Builtin preview search matches
hi("FzfLuaSearch", { link = "IncSearch" })

-- Builtin preview "border" scroll empty
hi("FzfLuaScrollBorderEmpty", { link = "FzfLuaBorder" })

-- Builtin preview "border" scroll full
hi("FzfLuaScrollBorderFull", { link = "FzfLuaBorder" })

-- Builtin preview "float" scroll empty
hi("FzfLuaScrollFloatEmpty", { link = "PmenuSbar" })

-- Builtin preview "float" scroll full
hi("FzfLuaScrollFloatFull", { link = "PmenuThumb" })

-- Help win "fg/bg"
hi("FzfLuaHelpNormal", { link = "FzfLuaNormal" })

-- Help win border
hi("FzfLuaHelpBorder", { link = "FzfLuaBorder" })

-- Header keybind
hi("FzfLuaHeaderBind", { BlanchedAlmond })

-- Header text
hi("FzfLuaHeaderText", { Brown1 })

-- Path col nr ('qf,lsp,diag')
hi("FzfLuaPathColNr", { CadetBlue1 })

-- Path line nr ('qf,lsp,diag')
hi("FzfLuaPathLineNr", { LightGreen })

-- Buffer name ('lines')
hi("FzfLuaBufName", { link = "Directory" })

-- Buffer ID ('lines')
hi("FzfLuaBufId", { link = "TabLine" })

-- Buffer number ('buffers,tabs')
hi("FzfLuaBufNr", { BlanchedAlmond })

-- Buffer line nr ('lines,blines')
hi("FzfLuaBufLineNr", { link = "LineNr" })

-- Buffer line ('buffers')
hi("FzfLuaBufFlagCur", { Brown1 })

-- Buffer line ('buffers')
hi("FzfLuaBufFlagAlt", { CadetBlue1 })

-- Tab title ('tabs')
hi("FzfLuaTabTitle", { LightSkyBlue1 })

-- Tab marker ('tabs')
hi("FzfLuaTabMarker", { BlanchedAlmond })

-- Paths directory icon
hi("FzfLuaDirIcon", { link = "Directory" })

-- Path formatters directory hl group
hi("FzfLuaDirPart", { link = "Comment" })

-- Path formatters file hl group
hi("FzfLuaFilePart", { link = "@none" })

-- "live" queries prompt text
hi("FzfLuaLivePrompt", { PaleVioletRed1 })

-- LSP live symbols query match
hi("FzfLuaLiveSym", { PaleVioletRed1 })

-- fzf's 'fg\|bg'
hi("FzfLuaFzfNormal", { link = "FzfLuaNormal" })

-- fzf's 'fg+\|bg+'
hi("FzfLuaFzfCursorLine", { link = "FzfLuaCursorLine" })

-- fzf's 'hl+'
hi("FzfLuaFzfMatch", { link = "Special" })

-- fzf's 'border'
hi("FzfLuaFzfBorder", { link = "FzfLuaBorder" })

-- fzf's 'scrollbar'
hi("FzfLuaFzfScrollbar", { link = "FzfLuaFzfBorder" })

-- fzf's 'separator'
hi("FzfLuaFzfSeparator", { link = "FzfLuaFzfBorder" })

-- fzf's 'gutter' (hl 'bg' is used)
hi("FzfLuaFzfGutter", { link = "FzfLuaNormal" })

-- fzf's 'header'
hi("FzfLuaFzfHeader", { link = "FzfLuaTitle" })

-- fzf's 'info'
hi("FzfLuaFzfInfo", { link = "NonText" })

-- fzf's 'pointer'
hi("FzfLuaFzfPointer", { link = "Special" })

-- fzf's 'marker'
hi("FzfLuaFzfMarker", { link = "FzfLuaFzfPointer" })

-- fzf's 'spinner'
hi("FzfLuaFzfSpinner", { link = "FzfLuaFzfPointer" })

-- fzf's 'prompt'
hi("FzfLuaFzfPrompt", { link = "Special" })

-- fzf's 'header'
hi("FzfLuaFzfQuery", { link = "FzfLuaNormal" })
