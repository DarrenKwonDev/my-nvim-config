return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",  -- LSP 연동을 위한 cmp-nvim-lsp
    "hrsh7th/cmp-buffer",    -- 버퍼 내용 기반 자동완성을 위해 추가
    "hrsh7th/cmp-path",      -- 파일 경로 자동완성을 위해 추가
  },
  config = function()
    local cmp = require("cmp")

    cmp.setup {
      snippet = {
        expand = function(_)
          -- 실제로는 아무 동작도 하지 않음
        end,
      },
      completion = {
        completeopt = "menu,menuone,noinsert",
        keyword_length = 1,
      },
      sources = cmp.config.sources({
        { name = "nvim_lsp", priority = 1000 },
        { name = "buffer", priority = 500 },
        { name = "path", priority = 250 },
      }),
      -- 다른 설정에서 가져온 정렬 로직 적용
      sorting = {
        priority_weight = 2,
        comparators = {
          cmp.config.compare.offset,
          cmp.config.compare.exact,   -- 정확한 매치를 우선시
          cmp.config.compare.score,   -- 점수 기반 정렬
          cmp.config.compare.recently_used,  -- 최근 사용 항목 우선
          cmp.config.compare.kind,    -- 타입별 정렬
          cmp.config.compare.length,  -- 길이 기반 정렬
          cmp.config.compare.order,   -- 기본 순서
        },
      },
      -- 예쁜 테두리가 있는 창 스타일 적용
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      -- 한 번에 표시할 항목 수 제한
      performance = { 
        max_view_entries = 15 
      },
      mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ 
          behavior = cmp.ConfirmBehavior.Insert,
          select = true 
        }),
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
      }),
      formatting = {
        format = function(entry, vim_item)
          vim_item.menu = ({
            nvim_lsp = "[LSP]",
            buffer = "[Buffer]",
            path = "[Path]",
          })[entry.source.name]
          return vim_item
        end,
      },
      experimental = {
        ghost_text = true,
      },
    }
  end,
}

