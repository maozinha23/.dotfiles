local c = require("colors.maozinha23.palette").colors
local hi = require("colors.maozinha23.highlight").highlight
-- -----------------------------------------------------------------------------
-- :help lazy.nvim-⚙️-configuration-🌈-highlight-groups
-- -----------------------------------------------------------------------------
hi("LazyBold", { bold = true })
hi("LazyButton", { link = "CursorLine" })
hi("LazyButtonActive", { link = "PmenuSel" })
hi("LazyComment", { link = "Comment" })

-- Commit ref
hi("LazyCommit", { link = "@variable.builtin" })

hi("LazyCommitIssue", { link = "Number" })

-- Conventional commit scope
hi("LazyCommitScope", { link = "Italic" })

-- Conventional commit type
hi("LazyCommitType", { link = "Title" })

-- Property
hi("LazyDimmed", { link = "Conceal" })

-- Directory
hi("LazyDir", { link = "@markup.link" })

-- Task errors
hi("LazyError", { link = "DiagnosticError" })

-- Home button
hi("LazyH1", { link = "PmenuSel" })

-- Titles
hi("LazyH2", { link = "Bold" })

-- Task errors
hi("LazyInfo", { link = "DiagnosticInfo" })

hi("LazyItalic", { italic = true })
hi("LazyLocal", { link = "Constant" })

-- Unloaded icon for a plugin where cond() was false
hi("LazyNoCond", { link = "DiagnosticWarn" })

hi("LazyNormal", { link = "NormalFloat" })

-- Progress bar done
hi("LazyProgressDone", { link = "Constant" })

-- Progress bar todo
hi("LazyProgressTodo", { link = "LineNr" })

-- Property
hi("LazyProp", { link = "Conceal" })

hi("LazyReasonCmd", { link = "Operator" })
hi("LazyReasonEvent", { link = "Constant" })
hi("LazyReasonFt", { link = "Character" })
hi("LazyReasonImport", { link = "Identifier" })
hi("LazyReasonKeys", { link = "Statement" })
hi("LazyReasonPlugin", { link = "Special" })
hi("LazyReasonRequire", { link = "@variable.parameter" })
hi("LazyReasonRuntime", { link = "@macro" })
hi("LazyReasonSource", { link = "Character" })
hi("LazyReasonStart", { link = "@variable.member" })
hi("LazySpecial", { link = "@punctuation.special" })

-- Task output
hi("LazyTaskOutput", { link = "MsgArea" })

-- URL
hi("LazyUrl", { link = "@markup.link" })

-- Value of a property
hi("LazyValue", { link = "@string" })

-- Task errors
hi("LazyWarning", { link = "DiagnosticWarn" })
