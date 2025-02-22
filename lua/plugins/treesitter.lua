return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      -- 최소한으로 설치할 언어들만 지정 (여기서는 C, C++, Lua, Python)
      ensure_installed = { "c", "cpp", "lua", "python" },
      auto_install = true,
      highlight = {
        enable = true,
        use_languagetree = true,
      },
      indent = {
        enable = true,
      },
    }
  end,
}

