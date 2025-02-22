return {
  "neovim/nvim-lspconfig",
  dependencies = {
    -- nvim-cmp(자동완성 엔진)와 그 LSP 연동용 플러그인
    { "williamboman/mason.nvim", config = true },
    "williamboman/mason-lspconfig.nvim",
    {
      "hrsh7th/nvim-cmp",
      dependencies = {
        "hrsh7th/cmp-nvim-lsp",
      },
      -- nvim-cmp 설정을 원한다면 config 추가
      config = function()
        -- nvim-cmp 기본 설정 등
      end,
    },
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup {
      ensure_installed = { "clangd" },
    }

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

    -- clangd LSP 설정 (C/C++ 전용)
    require("lspconfig").clangd.setup {
      cmd = { "clangd", "--background-index" },
      filetypes = { "c", "cpp" },
      capabilities = capabilities,
    }
  end,
}

