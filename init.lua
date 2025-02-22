

-------------------------------------------------------------
-- vim general setting
-------------------------------------------------------------
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.tags = "tags;/"	-- recursively search

vim.wo.number = true -- 라인 번호 표시
vim.wo.relativenumber = true -- 상대적 라인 번호

-- mouse mode
vim.o.mouse = "r" -- termius를 사용 중이라서 mouse 활성화는 없는 편이 편하다.
vim.o.foldmethod = "manual"
vim.o.autochdir = true

vim.o.breakindent = true -- 줄바꿈 시 들여쓰기 유지
vim.o.ignorecase = true -- 검색 시 대소문자 구분 안함
vim.o.smartcase = true -- 대문자 포함 시 대소문자 구분

vim.wo.signcolumn = "yes" -- 사인 컬럼 항상 표시

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = "unnamedplus"
vim.o.showmode = false

-- Improve default search behavior
vim.o.incsearch = true

-- Save undo history
vim.o.undofile = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- set termguicolors to enable highlight groups
vim.o.termguicolors = true

-- swp은 있어야 작업 충돌을 막을 수 있다. 
vim.opt.swapfile = true

-- Set terminal tab title to `filename (cwd)`
vim.opt.title = true

-- 일반 모드에서 블록 커서 설정
vim.cmd([[let &t_EI = "\e[2 q"]])

-- 삽입 모드에서 선 커서 설정
vim.cmd([[let &t_SI = "\e[6 q"]])

-- `{, [, (`는 기본 매칭, `<:>`을 HTML 태그 매칭에 추가
vim.o.showmatch = true
vim.opt.matchpairs:append("<:>")

-- 자동 닫힘 괄호 추가
vim.api.nvim_set_keymap("i", "{", "{}<Left>", { noremap = true })
vim.api.nvim_set_keymap("i", "(", "()<Left>", { noremap = true })
vim.api.nvim_set_keymap("i", "[", "[]<Left>", { noremap = true })
vim.api.nvim_set_keymap("i", "\"", "\"\"<Left>", { noremap = true })
vim.api.nvim_set_keymap("i", "'", "''<Left>", { noremap = true })

-- 현재 줄 하이라이트
vim.o.cursorline = true

-- 긴 줄을 한 줄로 표시 (줄바꿈 없음)
vim.o.wrap = false

-- 텍스트 길이 제한 설정
vim.o.textwidth = 160


-- 탭 설정 (탭을 스페이스 2개로 변환)
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2  -- `<` `>` 들여쓰기가 tabstop과 동일하게 동작하도록 설정

-------------------------------------------------------------
-- pkg mgr
-------------------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 플러그인 설정 로드. .config/nvim/lua/plugins 하단의 *.lua를 로딩한다.
require("lazy").setup("plugins", {})



-------------------------------------------------------------
-- .config/nvim/lua 하위의 keymap.lua, language-specific-macro.lua 를 로드
-------------------------------------------------------------
require "keymap"
require("language-specific-macro").setupMacro()


-------------------------------------------------------------
-- autocmd
-------------------------------------------------------------

-- 현재 윈도우 높이의 1/4만큼 scrolloff를 설정하여 커서가 윈도우 아래쪽 3/4 지점에 도달했을 때 스크롤하도록 합니다
vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    vim.o.scrolloff = math.floor(vim.api.nvim_win_get_height(0) * 0.25)
  end
})

-------------------------------------------------------------
-- -, #, $도 단어의 일부로 인식하도록 추가합니다
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "typescript", "javascript", "css", "html", "json", "yaml", "markdown" },
  callback = function()
    vim.opt.iskeyword:append { "-", "#", "$" }
  end,
})

