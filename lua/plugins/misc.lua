return {

  "github/copilot.vim",

  -- Git management
  "tpope/vim-fugitive",

  -- Turn off some of the feature on big buffers
  "LunarVim/bigfile.nvim",

  -- .editorconfig
  "gpanders/editorconfig.nvim",

  -- GNU Assembler(GAS) 구문을 지원. for ASM
  "HealsCodes/vim-gas",

  -- Detect tabstop and shiftwidth automatically
  "tpope/vim-sleuth",

  -- Git 병합 충돌(conflict)을 시각적으로 표시, 해결
  { "akinsho/git-conflict.nvim", version = "*", config = true },

  -- 파일 아이콘 지원
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true, -- 필요할 때만 로드
    config = function()
      require("nvim-web-devicons").setup { default = true }
    end,
  },
  -- 하단 상태표시줄
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup {
        options = {
          theme = "auto",
          icons_enabled = true,
        },
      }
    end,
  },
  -- 포매팅
  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup {
        formatters_by_ft = {
          c = { "clang-format" },
          cpp = { "clang-format" },
        },
      }

      -- 포맷팅 실행 함수
      local function format()
        require("conform").format {
          lsp_fallback = true, -- LSP 지원 가능하면 LSP 사용, 없으면 clang-format
        }
      end

      vim.keymap.set({ "n", "i" }, "<F12>", format, { desc = "Format", silent = true })
      vim.keymap.set({ "n", "i" }, "<C-f>", format, { desc = "Format", silent = true })

      vim.api.nvim_create_user_command("Format", format, { desc = "Format current buffer with LSP" })

    end,
  }
}
