return {
  {
    "folke/edgy.nvim",
    event = "VeryLazy",
    init = function()
      -- 전역 상태줄을 하나로 설정 (전체 상태줄)
      vim.opt.laststatus = 3
      -- 창 분할 시 메인 에디터의 레이아웃 이동을 방지
      vim.opt.splitkeep = "screen"
    end,
    opts = {}  -- 기본 옵션 그대로 사용
  }
}

