return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8", -- 혹은 branch = "0.1.x" 사용
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup{
      defaults = {
        prompt_prefix = "> ",
        selection_caret = " ",
        path_display = { "smart" },
      },
      pickers = {
        -- 기본 pickers는 기본값을 그대로 사용합니다.
      },
      extensions = {
        -- 필요한 확장이 있다면 여기에 추가할 수 있습니다.
      },
    }

    -- default keys : https://github.com/nvim-telescope/telescope.nvim
    vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "Telescope: Find Files" })
    vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "Telescope: Live Grep" })
    vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "Telescope: Buffers" })
    vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, { desc = "Telescope: Help Tags" })
  end,
}

