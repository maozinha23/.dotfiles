-- -----------------------------------------------------------------------------
-- :help oil-highlights
-- -----------------------------------------------------------------------------
return function(palette)
  return {
    -- Hidden entry in an oil buffer
    OilHidden = { link = "Comment" },

    -- Directory names in an oil buffer
    OilDir = { link = "Directory" },

    -- Hidden directory names in an oil buffer
    OilDirHidden = { link = "OilHidden" },

    -- Icon for directories
    OilDirIcon = { link = "OilDir" },

    -- Socket files in an oil buffer
    OilSocket = { link = "Keyword" },

    -- Hidden socket files in an oil buffer
    OilSocketHidden = { link = "OilHidden" },

    -- Soft links in an oil buffer
    OilLink = {},

    -- Orphaned soft links in an oil buffer
    OilOrphanLink = { link = "DiagnosticError" },

    -- Hidden soft links in an oil buffer
    OilLinkHidden = { link = "OilHidden" },

    -- Hidden orphaned soft links in an oil buffer
    OilOrphanLinkHidden = { link = "OilHidden" },

    -- The target of a soft link
    OilLinkTarget = { link = "Comment" },

    -- The target of an orphaned soft link
    OilOrphanLinkTarget = { link = "DiagnosticError" },

    -- The target of a hidden soft link
    OilLinkTargetHidden = { link = "OilHidden" },

    -- The target of an hidden orphaned soft link
    OilOrphanLinkTargetHidden = { link = "OilHidden" },

    -- Normal files in an oil buffer
    OilFile = {},

    -- Hidden normal files in an oil buffer
    OilFileHidden = { link = "OilHidden" },

    -- Create action in the oil preview window
    OilCreate = { link = "DiagnosticInfo" },

    -- Delete action in the oil preview window
    OilDelete = { link = "DiagnosticError" },

    -- Move action in the oil preview window
    OilMove = { link = "DiagnosticWarn" },

    -- Copy action in the oil preview window
    OilCopy = { link = "DiagnosticHint" },

    -- Change action in the oil preview window
    OilChange = { link = "Special" },

    -- Restore (from the trash) action in the oil preview window
    OilRestore = { link = "OilCreate" },

    -- Purge (Permanently delete a file from trash) action in the oil preview
    -- window
    OilPurge = { link = "OilDelete" },

    -- Trash (delete a file to trash) action in the oil preview window
    OilTrash = { link = "OilDelete" },

    -- Virtual text that shows the original path of file in the trash
    OilTrashSourcePath = { link = "Comment" },
  }
end
