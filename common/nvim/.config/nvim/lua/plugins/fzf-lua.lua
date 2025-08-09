return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  --dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  --dependencies = { "echasnovski/mini.icons" },
  config = function()
    require("fzf-lua").setup({
      winopts = {
        border = "single",

        preview = {
          border = "single",
        },
      },

      grep = {
        rg_opts = "--column --line-number --no-heading --color=never --smart-case --max-columns=4096 -e",
      },
    })
  end,
}
