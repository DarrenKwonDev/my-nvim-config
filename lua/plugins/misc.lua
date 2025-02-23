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

  -- 현재 word 에 밑줄
  {
    "RRethy/vim-illuminate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      -- delay는 너무 짧으면 성능에 영향을 줄 수 있어 적절한 값으로 설정
      delay = 150,
      -- LSP, Treesitter, 정규식 순으로 참조를 찾습니다
      providers = {
        'lsp',
        'treesitter',
        'regex',
      },
      -- 대용량 파일 처리를 위한 설정
      large_file_cutoff = 2000,
      -- 파일 타입별 비활성화
      filetypes_denylist = {
        'dirvish',
        'fugitive',
        'lazy',
        'NvimTree',
        'TelescopePrompt',
      },
      -- 커서 아래 단어도 하이라이트
      under_cursor = true,
    },
    config = function(_, opts)
      require("illuminate").configure(opts)

      vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = "#FFCF5F", fg = "#000000" })
      vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = "#FFCF5F", fg = "#000000" })
      vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = "#FFCF5F", fg = "#000000" })


      -- 키매핑 (선택사항)
      vim.keymap.set('n', '<leader>ti', '<cmd>IlluminateToggle<cr>', { desc = 'Toggle Illuminate' })
    end,
  },


  -- 상단 버퍼 리스트
  {
    "akinsho/bufferline.nvim",
    version = "*", -- 최신 안정 버전을 사용 (혹은 tag를 명시할 수 있음)
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      vim.opt.termguicolors = true  -- 필수: GUI 색상 사용

      require("bufferline").setup{
        -- 최소한의 기본 설정만 사용합니다.
        options = {
          mode = "buffers",           -- 버퍼 모드 사용 (탭처럼 보여줌)
          numbers = "ordinal",        -- 탭에 순번을 표시합니다.
          separator_style = "thin",   -- 얇은 구분선
          always_show_bufferline = true,  -- 버퍼라인을 항상 표시
        },
      }
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
