local c = require("colors.maozinha23.palette").colors
local hi = require("colors.maozinha23.highlight").highlight
-- -----------------------------------------------------------------------------
-- :help oil-highlights
-- -----------------------------------------------------------------------------
-- Hidden entry in an oil buffer
hi("OilHidden", { link = "Comment" })

-- Directory names in an oil buffer
hi("OilDir", { link = "Directory" })

-- Hidden directory names in an oil buffer
hi("OilDirHidden", { link = "OilHidden" })

-- Icon for directories
hi("OilDirIcon", { link = "OilDir" })

-- Socket files in an oil buffer
hi("OilSocket", { link = "Keyword" })

-- Hidden socket files in an oil buffer
hi("OilSocketHidden", { link = "OilHidden" })

-- Soft links in an oil buffer
hi("OilLink", {})

-- Orphaned soft links in an oil buffer
hi("OilOrphanLink", { link = "DiagnosticError" })

-- Hidden soft links in an oil buffer
hi("OilLinkHidden", { link = "OilHidden" })

-- Hidden orphaned soft links in an oil buffer
hi("OilOrphanLinkHidden", { link = "OilHidden" })

-- The target of a soft link
hi("OilLinkTarget", { link = "Comment" })

-- The target of an orphaned soft link
hi("OilOrphanLinkTarget", { link = "DiagnosticError" })

-- The target of a hidden soft link
hi("OilLinkTargetHidden", { link = "OilHidden" })

-- The target of an hidden orphaned soft link
hi("OilOrphanLinkTargetHidden", { link = "OilHidden" })

-- Normal files in an oil buffer
hi("OilFile", {})

-- Hidden normal files in an oil buffer
hi("OilFileHidden", { link = "OilHidden" })

-- Create action in the oil preview window
hi("OilCreate", { link = "DiagnosticInfo" })

-- Delete action in the oil preview window
hi("OilDelete", { link = "DiagnosticError" })

-- Move action in the oil preview window
hi("OilMove", { link = "DiagnosticWarn" })

-- Copy action in the oil preview window
hi("OilCopy", { link = "DiagnosticHint" })

-- Change action in the oil preview window
hi("OilChange", { link = "Special" })

-- Restore (from the trash) action in the oil preview window
hi("OilRestore", { link = "OilCreate" })

-- Purge (Permanently delete a file from trash) action in the oil preview window
hi("OilPurge", { link = "OilDelete" })

-- Trash (delete a file to trash) action in the oil preview window
hi("OilTrash", { link = "OilDelete" })

-- Virtual text that shows the original path of file in the trash
hi("OilTrashSourcePath", { link = "Comment" })
