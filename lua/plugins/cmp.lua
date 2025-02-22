return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    -- LSP 연동을 위한 cmp-nvim-lsp
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local cmp = require("cmp")

    cmp.setup {
      -- snippet 설정을 비워둡니다.
      snippet = {
        expand = function(_)
          -- 실제로는 아무 동작도 하지 않음
        end,
      },
      sources = {
        { name = "nvim_lsp" },  -- LSP 기반 자동완성
        { name = "buffer" },    -- 현재 버퍼 내용 기반 자동완성
        { name = "path" },      -- 파일 경로 자동완성
      },
      mapping = cmp.mapping.preset.insert {
        ["<CR>"] = cmp.mapping.confirm {
          select = true, -- 엔터 시 자동완성 항목 확정
        },
      },
    }
  end,
}

