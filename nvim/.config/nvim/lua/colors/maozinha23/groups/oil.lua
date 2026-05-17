local hl = require("colors.maozinha23.highlight")
local c = require("colors.maozinha23.palette")
-- -----------------------------------------------------------------------------
-- :help oil-highlights
-- -----------------------------------------------------------------------------
-- Hidden entry in an oil buffer
hl.highlight("OilHidden", { link = "Comment" })

-- Directory names in an oil buffer
hl.highlight("OilDir", { link = "Directory" })

-- Hidden directory names in an oil buffer
hl.highlight("OilDirHidden", { link = "OilHidden" })

-- Icon for directories
hl.highlight("OilDirIcon", { link = "OilDir" })

-- Socket files in an oil buffer
hl.highlight("OilSocket", { link = "Keyword" })

-- Hidden socket files in an oil buffer
hl.highlight("OilSocketHidden", { link = "OilHidden" })

-- Soft links in an oil buffer
hl.highlight("OilLink", {})

-- Orphaned soft links in an oil buffer
hl.highlight("OilOrphanLink", { link = "DiagnosticError" })

-- Hidden soft links in an oil buffer
hl.highlight("OilLinkHidden", { link = "OilHidden" })

-- Hidden orphaned soft links in an oil buffer
hl.highlight("OilOrphanLinkHidden", { link = "OilHidden" })

-- The target of a soft link
hl.highlight("OilLinkTarget", { link = "Comment" })

-- The target of an orphaned soft link
hl.highlight("OilOrphanLinkTarget", { link = "DiagnosticError" })

-- The target of a hidden soft link
hl.highlight("OilLinkTargetHidden", { link = "OilHidden" })

-- The target of an hidden orphaned soft link
hl.highlight("OilOrphanLinkTargetHidden", { link = "OilHidden" })

-- Normal files in an oil buffer
hl.highlight("OilFile", {})

-- Hidden normal files in an oil buffer
hl.highlight("OilFileHidden", { link = "OilHidden" })

-- Create action in the oil preview window
hl.highlight("OilCreate", { link = "DiagnosticInfo" })

-- Delete action in the oil preview window
hl.highlight("OilDelete", { link = "DiagnosticError" })

-- Move action in the oil preview window
hl.highlight("OilMove", { link = "DiagnosticWarn" })

-- Copy action in the oil preview window
hl.highlight("OilCopy", { link = "DiagnosticHint" })

-- Change action in the oil preview window
hl.highlight("OilChange", { link = "Special" })

-- Restore (from the trash) action in the oil preview window
hl.highlight("OilRestore", { link = "OilCreate" })

-- Purge (Permanently delete a file from trash) action in the oil preview window
hl.highlight("OilPurge", { link = "OilDelete" })

-- Trash (delete a file to trash) action in the oil preview window
hl.highlight("OilTrash", { link = "OilDelete" })

-- Virtual text that shows the original path of file in the trash
hl.highlight("OilTrashSourcePath", { link = "Comment" })
