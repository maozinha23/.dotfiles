local gen_loader = require("mini.snippets").gen_loader

require("mini.snippets").setup({
  snippets = {
    -- Load snippets based on current language by reading files from
    -- "snippets/" subdirectories from "runtimepath" directories.
    gen_loader.from_lang(),
  },

  mappings = {
    -- Expand snippet at cursor position. Created globally in Insert mode.
    expand = "<M-e>",

    -- Interact with default "expand.insert" session.
    -- Created for the duration of active session(s)
    jump_next = "<Tab>",
    jump_prev = "<S-Tab>",
    stop = "<C-c>",
  },
})
