return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "williamboman/mason.nvim", config = true },
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup {
      ensure_installed = { "clangd" },
    }

    -- LSP 서버가 attach될 때 실행할 함수
    local on_attach = function(client, bufnr)
      -- 현재 버퍼에 대한 키맵 설정
      local opts = { noremap=true, silent=true, buffer=bufnr }
      
      -- LSP 관련 키맵
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
      vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
      vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)

      -- 문서 서식 지정
      vim.keymap.set('n', '<space>f', function()
        vim.lsp.buf.format { async = true }
      end, opts)

      -- 자동 완성을 위한 추가 설정
      if client.server_capabilities.completionProvider then
        -- 자동 완성 트리거 문자 설정
        vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'
      end
    end

    -- LSP capabilities 설정
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
    
    -- LSP 진단 설정
    vim.diagnostic.config({
      virtual_text = true,      -- 인라인으로 에러 표시
      signs = true,             -- 사인 컬럼에 에러 표시
      underline = true,         -- 에러 부분에 밑줄
      update_in_insert = false, -- 삽입 모드에서는 업데이트 하지 않음
      severity_sort = true,     -- 심각도 순으로 정렬
      float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
      },
    })

    -- clangd LSP 설정
    require("lspconfig").clangd.setup {
      cmd = {
        "clangd",
        "--background-index",            -- 백그라운드 인덱싱
        "--clang-tidy",                 -- clang-tidy 검사 활성화
        "--completion-style=detailed",   -- 상세한 완성 스타일
        "--header-insertion=iwyu",       -- Include What You Use
        "--suggest-missing-includes",    -- 없는 include 제안
      },
      filetypes = { "c", "cpp", "objc", "objcpp" },
      capabilities = capabilities,
      on_attach = on_attach,
      flags = {
        debounce_text_changes = 150,    -- 텍스트 변경 시 지연시간
      },
    }

    -- 진단 관련 키맵
    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
    vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
  end,
}
