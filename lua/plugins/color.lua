return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",               -- Mocha 버전 사용
        transparent_background = true,   -- 배경색 투명
        term_colors = true,              -- 터미널 색상 적용
        show_end_of_buffer = false,      -- 버퍼 끝의 ~ 표시 제거
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}

