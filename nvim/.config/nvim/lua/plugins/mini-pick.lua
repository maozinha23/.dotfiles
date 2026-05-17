local pick = require("mini.pick")

require("mini.pick").setup({
  source = { show = pick.default_show },

  mappings = {
    caret_left = "<Left>",
    caret_right = "<Right>",

    choose = "<CR>",
    choose_in_split = "<C-s>",
    choose_in_tabpage = "<C-t>",
    choose_in_vsplit = "<C-v>",
    choose_marked = "<C-CR>",

    delete_char = "<BS>",
    delete_char_right = "<Del>",
    delete_left = "",
    delete_word = "",

    mark = "<C-x>",
    mark_all = "<C-a>",

    move_down = "",
    move_start = "",
    move_up = "",

    paste = "<C-p>",

    refine = "",
    refine_marked = "",

    scroll_down = "<M-Down>",
    scroll_left = "<M-Left>",
    scroll_right = "<M-Right>",
    scroll_up = "<M-Up>",

    stop = "<Esc>",

    toggle_info = "<S-Tab>",
    toggle_preview = "<Tab>",
  },

  window = {
    prompt_caret = "▏",
    prompt_prefix = " >: ",
  },
})
