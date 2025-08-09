local c = require("colors.maozinha23.palette").colors
local hi = require("colors.maozinha23.highlight").highlight
-- -----------------------------------------------------------------------------
-- :help lazy.nvim-⚙️-configuration-🌈-highlight-groups
-- -----------------------------------------------------------------------------
hi("LazyButtonActive", { fg = c.bright_white, bg = c.blue, bold = true })
hi("LazyH1", { fg = c.bright_white, bg = c.blue, bold = true })

hi("LazyBold", { bold = true })
hi("LazyButton", { link = "CursorLine" })
hi("LazyButtonActive", { link = "Visual" })
hi("LazyComment", { link = "Comment" })

-- commit ref
hi("LazyCommit", { link = "@variable.builtin" })

hi("LazyCommitIssue", { link = "Number" })

-- conventional commit scope
hi("LazyCommitScope", { link = "Italic" })

-- conventional commit type
hi("LazyCommitType", { link = "Title" })

-- property
hi("LazyDimmed", { link = "Conceal" })

-- directory
hi("LazyDir", { link = "@markup.link" })

-- task errors
hi("LazyError", { link = "DiagnosticError" })

-- home button
hi("LazyH1", { link = "IncSearch" })

-- titles
hi("LazyH2", { link = "Bold" })

-- task errors
hi("LazyInfo", { link = "DiagnosticInfo" })

hi("LazyItalic", { link = "{ italic = true }" })
hi("LazyLocal", { link = "Constant" })

-- unloaded icon for a plugin where cond() was false
hi("LazyNoCond", { link = "DiagnosticWarn" })

hi("LazyNormal", { link = "NormalFloat" })

-- progress bar done
hi("LazyProgressDone", { link = "Constant" })

-- progress bar todo
hi("LazyProgressTodo", { link = "LineNr" })

-- property
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

-- task output
hi("LazyTaskOutput", { link = "MsgArea" })

-- url
hi("LazyUrl", { link = "@markup.link" })

-- value of a property
hi("LazyValue", { link = "@string" })

-- task errors
hi("LazyWarning", { link = "DiagnosticWarn" })
