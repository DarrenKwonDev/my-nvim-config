-- Write file on cmd+s
vim.keymap.set("n", "<D-s>", "<cmd>w<CR>", { silent = false })

-- 전체 코드 자동 들여쓰기 후 커서 복귀(lsp, formatter 안 쓰고 단순 indent)
vim.keymap.set("n", "<Leader>g", "mzgg=G`z", { noremap = true, desc = "전체 코드 자동 들여쓰기 후 커서 복귀" })

-- ctag 생성
vim.keymap.set('n', '<f5>', ':!ctags -R --verbose<CR>', { desc = 'Run ctags on the entire project' })

