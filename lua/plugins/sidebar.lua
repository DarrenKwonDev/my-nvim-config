return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",        -- 필수
      "nvim-tree/nvim-web-devicons",  -- 아이콘 (권장)
      "MunifTanjim/nui.nvim",         -- UI 라이브러리
    },
    -- Ctrl + b로 토글할 수 있도록 키 매핑
    keys = {
      {
        "<C-b>",
        function()
          require("neo-tree.command").execute({
            source = "filesystem",  -- 파일 트리 소스
            position = "left",      -- 왼쪽에 표시
            toggle = true,          -- 토글(열려 있으면 닫고, 닫혀 있으면 열기)
          })
        end,
        desc = "Toggle Neo-tree filesystem",
      },
    },
    config = function()
      require("neo-tree").setup({
        -- 최후의 창이 neo-tree라면 자동 닫기
        close_if_last_window = true,
        -- 파일 시스템 소스 관련 최소 설정
        filesystem = {
          follow_current_file = true,       -- 현재 열려 있는 파일 위치 자동 포커스
          use_libuv_file_watcher = true,    -- 실시간으로 파일 변화 감지
        },
        window = {
          width = 30, -- 사이드바 너비
        },
      })
    end,
  },
}

