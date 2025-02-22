
Executing:     vnoremenu PopUp.Cut                     "+x
Executing:     vnoremenu PopUp.Copy                    "+y
Executing:     anoremenu PopUp.Paste                   "+gP
Executing:     vnoremenu PopUp.Paste                   "+P
Executing:     vnoremenu PopUp.Delete                  "_x
Executing:     nnoremenu PopUp.Select\ All             ggVG
Executing:     vnoremenu PopUp.Select\ All             gg0oG$
Executing:     inoremenu PopUp.Select\ All             <C-Home><C-O>VG
Executing:     anoremenu PopUp.Inspect                 <Cmd>Inspect<CR>
Executing:     anoremenu PopUp.-1-                     <Nop>
Executing:     anoremenu PopUp.How-to\ disable\ mouse  <Cmd>help disable-mouse<CR>
Executing:   
Searching for "ftplugin.vim" in runtime path
Searching for "/home/server01/.config/nvim/ftplugin.vim"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin.vim"
sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin.vim"
line 1: " Vim support file to switch on loading plugins for file types
line 2: "
line 3: " Maintainer:^IThe Vim Project <https://github.com/vim/vim>
line 4: " Last change:^I2023 Aug 10
line 5: " Former Maintainer:^IBram Moolenaar <Bram@vim.org>
line 6: 
line 7: if exists("did_load_ftplugin")
line 8:   finish
line 9: endif
line 10: let did_load_ftplugin = 1
line 11: 
line 12: augroup filetypeplugin
line 13:   au FileType * call s:LoadFTPlugin()
line 14: 
line 15:   func! s:LoadFTPlugin()
line 39: augroup END
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin.vim
Searching for "/opt/nvim-linux-x86_64/lib/nvim/ftplugin.vim"
Searching for "indent.vim" in runtime path
Searching for "/home/server01/.config/nvim/indent.vim"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/indent.vim"
sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/indent.vim"
line 1: " Vim support file to switch on loading indent files for file types
line 2: "
line 3: " Maintainer:^IThe Vim Project <https://github.com/vim/vim>
line 4: " Last Change:^I2023 Aug 10
line 5: " Former Maintainer:^IBram Moolenaar <Bram@vim.org>
line 6: 
line 7: if exists("did_indent_on")
line 8:   finish
line 9: endif
line 10: let did_indent_on = 1
line 11: 
line 12: augroup filetypeindent
line 13:   au FileType * call s:LoadIndent()
line 14:   func! s:LoadIndent()
line 33: augroup END
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/indent.vim
Searching for "/opt/nvim-linux-x86_64/lib/nvim/indent.vim"
could not source "/etc/xdg/nvim/sysinit.vim"
could not source "$VIM/sysinit.vim"
sourcing "/home/server01/.config/nvim/init.lua"
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/filetype.lua
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/filetype.lua"
Executing:   augroup filetypedetect
Executing:   runtime! ftdetect/*.{vim,lua}
Searching for "ftdetect/*.{vim,lua}" in runtime path
Searching for "/home/server01/.config/nvim/ftdetect/*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/ftdetect/*.{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/ftdetect/*.{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/ftdetect/*.{vim,lua}"
Searching for "/home/server01/.local/state/nvim/lazy/readme/ftdetect/*.{vim,lua}"
not found in runtime path: "ftdetect/*.{vim,lua}"
Executing:   augroup END
Executing:   
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/filetype.lua
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: augroup filetypedetect
Executing: augroup END
Executing: augroup filetypedetect
Executing: augroup END
Executing: augroup filetypedetect
Executing: augroup END
Executing: source /home/server01/.local/share/nvim/lazy/nvim-lspconfig/plugin/lspconfig.lua
line 0: sourcing "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/plugin/lspconfig.lua"
finished sourcing /home/server01/.local/share/nvim/lazy/nvim-lspconfig/plugin/lspconfig.lua
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: augroup filetypedetect
Executing: augroup END
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/editorconfig.lua
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/editorconfig.lua"
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/editorconfig.lua
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/gzip.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/gzip.vim"
line 1: " Vim plugin for editing compressed files.
line 2: " Maintainer:^IThe Vim Project <https://github.com/vim/vim>
line 3: " Last Change:^I2023 Aug 10
line 4: " Former Maintainer:^IBram Moolenaar <Bram@vim.org>
line 5: 
line 6: " Exit quickly when:
line 7: " - this plugin was already loaded
line 8: " - when 'compatible' is set
line 9: " - some autocommands are already taking care of compressed files
line 10: if exists("loaded_gzip") || &cp || exists("#BufReadPre#*.gz")
line 11:   finish
line 12: endif
line 13: let loaded_gzip = 1
line 14: 
line 15: augroup gzip
line 16:   " Remove all gzip autocommands
line 17:   au!
line 18: 
line 19:   " Enable editing of gzipped files.
line 20:   " The functions are defined in autoload/gzip.vim.
line 21:   "
line 22:   " Set binary mode before reading the file.
line 23:   " Use "gzip -d", gunzip isn't always available.
line 24:   autocmd BufReadPre,FileReadPre^I*.gz,*.bz2,*.Z,*.lzma,*.xz,*.lz,*.zst,*.br,*.lzo setlocal bin
line 25:   autocmd BufReadPost,FileReadPost^I*.gz  call gzip#read("gzip -dn")
line 26:   autocmd BufReadPost,FileReadPost^I*.bz2 call gzip#read("bzip2 -d")
line 27:   autocmd BufReadPost,FileReadPost^I*.Z   call gzip#read("uncompress")
line 28:   autocmd BufReadPost,FileReadPost^I*.lzma call gzip#read("lzma -d")
line 29:   autocmd BufReadPost,FileReadPost^I*.xz  call gzip#read("xz -d")
line 30:   autocmd BufReadPost,FileReadPost^I*.lz  call gzip#read("lzip -d")
line 31:   autocmd BufReadPost,FileReadPost^I*.zst call gzip#read("zstd -d --rm")
line 32:   autocmd BufReadPost,FileReadPost^I*.br call gzip#read("brotli -d --rm")
line 33:   autocmd BufReadPost,FileReadPost^I*.lzo call gzip#read("lzop -d -U")
line 34:   autocmd BufWritePost,FileWritePost^I*.gz  call gzip#write("gzip")
line 35:   autocmd BufWritePost,FileWritePost^I*.bz2 call gzip#write("bzip2")
line 36:   autocmd BufWritePost,FileWritePost^I*.Z   call gzip#write("compress -f")
line 37:   autocmd BufWritePost,FileWritePost^I*.lzma call gzip#write("lzma -z")
line 38:   autocmd BufWritePost,FileWritePost^I*.xz  call gzip#write("xz -z")
line 39:   autocmd BufWritePost,FileWritePost^I*.lz  call gzip#write("lzip")
line 40:   autocmd BufWritePost,FileWritePost^I*.zst  call gzip#write("zstd --rm")
line 41:   autocmd BufWritePost,FileWritePost^I*.br  call gzip#write("brotli --rm")
line 42:   autocmd BufWritePost,FileWritePost^I*.lzo  call gzip#write("lzop -U")
line 43:   autocmd FileAppendPre^I^I^I*.gz  call gzip#appre("gzip -dn")
line 44:   autocmd FileAppendPre^I^I^I*.bz2 call gzip#appre("bzip2 -d")
line 45:   autocmd FileAppendPre^I^I^I*.Z   call gzip#appre("uncompress")
line 46:   autocmd FileAppendPre^I^I^I*.lzma call gzip#appre("lzma -d")
line 47:   autocmd FileAppendPre^I^I^I*.xz   call gzip#appre("xz -d")
line 48:   autocmd FileAppendPre^I^I^I*.lz   call gzip#appre("lzip -d")
line 49:   autocmd FileAppendPre^I^I^I*.zst call gzip#appre("zstd -d --rm")
line 50:   autocmd FileAppendPre^I^I^I*.br call gzip#appre("brotli -d --rm")
line 51:   autocmd FileAppendPre^I^I^I*.lzo call gzip#appre("lzop -d -U")
line 52:   autocmd FileAppendPost^I^I*.gz  call gzip#write("gzip")
line 53:   autocmd FileAppendPost^I^I*.bz2 call gzip#write("bzip2")
line 54:   autocmd FileAppendPost^I^I*.Z   call gzip#write("compress -f")
line 55:   autocmd FileAppendPost^I^I*.lzma call gzip#write("lzma -z")
line 56:   autocmd FileAppendPost^I^I*.xz call gzip#write("xz -z")
line 57:   autocmd FileAppendPost^I^I*.lz call gzip#write("lzip")
line 58:   autocmd FileAppendPost^I^I*.zst call gzip#write("zstd --rm")
line 59:   autocmd FileAppendPost^I^I*.br call gzip#write("brotli --rm")
line 60:   autocmd FileAppendPost^I^I*.lzo call gzip#write("lzop -U")
line 61: augroup END
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/gzip.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/man.lua
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/man.lua"
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/man.lua
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/matchit.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/matchit.vim"
line 1: " Nvim: load the matchit plugin by default.
line 2: if !exists("g:loaded_matchit") && stridx(&packpath, $VIMRUNTIME) >= 0
line 3:   packadd matchit
Searching for "pack/*/start/matchit" in "/opt/nvim-linux-x86_64/share/nvim/runtime"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/*/start/matchit"
not found in 'packpath': "pack/*/start/matchit"
Searching for "pack/*/opt/matchit" in "/opt/nvim-linux-x86_64/share/nvim/runtime"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/*/opt/matchit"
line 3: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim"
line 1: "  matchit.vim: (global plugin) Extended "%" matching
line 2: "  Maintainer:  Christian Brabandt
line 3: "  Version:     1.19
line 4: "  Last Change: 2023, June 28th
line 5: "  Repository:  https://github.com/chrisbra/matchit
line 6: "  Previous URL:http://www.vim.org/script.php?script_id=39
line 7: "  Previous Maintainer:  Benji Fisher PhD   <benji@member.AMS.org>
line 8: 
line 9: " Documentation:
line 10: "  The documentation is in a separate file: ../doc/matchit.txt
line 11: 
line 12: " Credits:
line 13: "  Vim editor by Bram Moolenaar (Thanks, Bram!)
line 14: "  Original script and design by Raul Segura Acevedo
line 15: "  Support for comments by Douglas Potts
line 16: "  Support for back references and other improvements by Benji Fisher
line 17: "  Support for many languages by Johannes Zellner
line 18: "  Suggestions for improvement, bug reports, and support for additional
line 19: "  languages by Jordi-Albert Batalla, Neil Bird, Servatius Brandt, Mark
line 20: "  Collett, Stephen Wall, Dany St-Amant, Yuheng Xie, and Johannes Zellner.
line 21: 
line 22: " Debugging:
line 23: "  If you'd like to try the built-in debugging commands...
line 24: "   :MatchDebug      to activate debugging for the current buffer
line 25: "  This saves the values of several key script variables as buffer-local
line 26: "  variables.  See the MatchDebug() function, below, for details.
line 27: 
line 28: " TODO:  I should think about multi-line patterns for b:match_words.
line 29: "   This would require an option:  how many lines to scan (default 1).
line 30: "   This would be useful for Python, maybe also for *ML.
line 31: " TODO:  Maybe I should add a menu so that people will actually use some of
line 32: "   the features that I have implemented.
line 33: " TODO:  Eliminate the MultiMatch function.  Add yet another argument to
line 34: "   Match_wrapper() instead.
line 35: " TODO:  Allow :let b:match_words = '\(\(foo\)\(bar\)\):\3\2:end\1'
line 36: " TODO:  Make backrefs safer by using '\V' (very no-magic).
line 37: " TODO:  Add a level of indirection, so that custom % scripts can use my
line 38: "   work but extend it.
line 39: 
line 40: " Allow user to prevent loading and prevent duplicate loading.
line 41: if exists("g:loaded_matchit") || &cp
line 42:   finish
line 43: endif
line 44: let g:loaded_matchit = 1
line 45: 
line 46: let s:save_cpo = &cpo
line 47: set cpo&vim
line 48: 
line 49: fun MatchEnable()
line 89: 
line 90: fun MatchDisable()
line 108: 
line 109: " Call this function to turn on debugging information.  Every time the main
line 110: " script is run, buffer variables will be saved.  These can be used directly
line 111: " or viewed using the menu items below.
line 112: if !exists(":MatchDebug")
line 113:   command! -nargs=0 MatchDebug call matchit#Match_debug()
line 114: endif
line 115: if !exists(":MatchDisable")
line 116:   command! -nargs=0 MatchDisable :call MatchDisable()
line 117: endif
line 118: if !exists(":MatchEnable")
line 119:   command! -nargs=0 MatchEnable :call MatchEnable()
line 120: endif
line 121: 
line 122: call MatchEnable()
calling MatchEnable()

line 1:   nnoremap <silent> <Plug>(MatchitNormalForward)     :<C-U>call matchit#Match_wrapper('',1,'n')<CR>
line 2:   nnoremap <silent> <Plug>(MatchitNormalBackward)    :<C-U>call matchit#Match_wrapper('',0,'n')<CR>
line 3:   xnoremap <silent> <Plug>(MatchitVisualForward)     :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") \| exe ":normal! m'" \| endif<cr>gv``
line 5:   xnoremap <silent> <Plug>(MatchitVisualBackward)    :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv``
line 6:   onoremap <silent> <Plug>(MatchitOperationForward)  :<C-U>call matchit#Match_wrapper('',1,'o')<CR>
line 7:   onoremap <silent> <Plug>(MatchitOperationBackward) :<C-U>call matchit#Match_wrapper('',0,'o')<CR>
line 8: 
line 9:   " Analogues of [{ and ]} using matching patterns:
line 10:   nnoremap <silent> <Plug>(MatchitNormalMultiBackward)    :<C-U>call matchit#MultiMatch("bW", "n")<CR>
line 11:   nnoremap <silent> <Plug>(MatchitNormalMultiForward)     :<C-U>call matchit#MultiMatch("W",  "n")<CR>
line 12:   xnoremap <silent> <Plug>(MatchitVisualMultiBackward)    :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv``
line 13:   xnoremap <silent> <Plug>(MatchitVisualMultiForward)     :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv``
line 14:   onoremap <silent> <Plug>(MatchitOperationMultiBackward) :<C-U>call matchit#MultiMatch("bW", "o")<CR>
line 15:   onoremap <silent> <Plug>(MatchitOperationMultiForward)  :<C-U>call matchit#MultiMatch("W",  "o")<CR>
line 16: 
line 17:   " text object:
line 18:   xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
line 19: 
line 20:   if !exists("g:no_plugin_maps")
line 21:     nmap <silent> %  <Plug>(MatchitNormalForward)
line 22:     nmap <silent> g% <Plug>(MatchitNormalBackward)
line 23:     xmap <silent> %  <Plug>(MatchitVisualForward)
line 24:     xmap <silent> g% <Plug>(MatchitVisualBackward)
line 25:     omap <silent> %  <Plug>(MatchitOperationForward)
line 26:     omap <silent> g% <Plug>(MatchitOperationBackward)
line 27: 
line 28:     " Analogues of [{ and ]} using matching patterns:
line 29:     nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
line 30:     nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
line 31:     xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
line 32:     xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
line 33:     omap <silent> [% <Plug>(MatchitOperationMultiBackward)
line 34:     omap <silent> ]% <Plug>(MatchitOperationMultiForward)
line 35: 
line 36:     " Text object
line 37:     xmap a% <Plug>(MatchitVisualTextObject)
line 38:   endif
MatchEnable returning #0

continuing in /opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim

line 123: 
line 124: let &cpo = s:save_cpo
line 125: unlet s:save_cpo
line 126: 
line 127: " vim:sts=2:sw=2:et:
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
continuing in /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/matchit.vim
line 3: augroup filetypedetect
line 3: augroup END
line 4: endif
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/matchit.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/matchparen.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/matchparen.vim"
line 1: " Vim plugin for showing matching parens
line 2: " Maintainer:^IThe Vim Project <https://github.com/vim/vim>
line 3: " Last Change:^I2024 May 18
line 4: " Former Maintainer:^IBram Moolenaar <Bram@vim.org>
line 5: 
line 6: " Exit quickly when:
line 7: " - this plugin was already loaded (or disabled)
line 8: " - when 'compatible' is set
line 9: if exists("g:loaded_matchparen") || &cp
line 10:   finish
line 11: endif
line 12: let g:loaded_matchparen = 1
line 13: 
line 14: if !exists("g:matchparen_timeout")
line 15:   let g:matchparen_timeout = 300
line 16: endif
line 17: if !exists("g:matchparen_insert_timeout")
line 18:   let g:matchparen_insert_timeout = 60
line 19: endif
line 20: 
line 21: let s:has_matchaddpos = exists('*matchaddpos')
line 22: 
line 23: augroup matchparen
line 24:   " Replace all matchparen autocommands
line 25:   autocmd! CursorMoved,CursorMovedI,WinEnter,WinScrolled * call s:Highlight_Matching_Pair()
line 26:   autocmd! BufWinEnter * autocmd SafeState * ++once call s:Highlight_Matching_Pair()
line 27:   autocmd! WinLeave,BufLeave * call s:Remove_Matches()
line 28:   if exists('##TextChanged')
line 29:     autocmd! TextChanged,TextChangedI * call s:Highlight_Matching_Pair()
line 30:     autocmd! TextChangedP * call s:Remove_Matches()
line 31:   endif
line 32: augroup END
line 33: 
line 34: " Skip the rest if it was already done.
line 35: if exists("*s:Highlight_Matching_Pair")
line 36:   finish
line 37: endif
line 38: 
line 39: let s:cpo_save = &cpo
line 40: set cpo-=C
line 41: 
line 42: " The function that is invoked (very often) to define a ":match" highlighting
line 43: " for any matching paren.
line 44: func s:Highlight_Matching_Pair()
line 205: 
line 206: func s:Remove_Matches()
line 214: 
line 215: " Define commands that will disable and enable the plugin.
line 216: command DoMatchParen call s:DoMatchParen()
line 217: command NoMatchParen call s:NoMatchParen()
line 218: 
line 219: func s:NoMatchParen()
line 226: 
line 227: func s:DoMatchParen()
line 233: 
line 234: let &cpo = s:cpo_save
line 235: unlet s:cpo_save
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/matchparen.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/netrwPlugin.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/netrwPlugin.vim"
line 1: " netrwPlugin.vim: Handles file transfer and remote directory listing across a network
line 2: "            PLUGIN SECTION
line 3: " Maintainer:^IThis runtime file is looking for a new maintainer.
line 4: " Date:^I^IFeb 09, 2021
line 5: " Last Change:
line 6: "   2024 May 08 by Vim Project: cleanup legacy Win9X checks
line 7: " Former Maintainer:   Charles E Campbell
line 8: " GetLatestVimScripts: 1075 1 :AutoInstall: netrw.vim
line 9: " Copyright:    Copyright (C) 1999-2021 Charles E. Campbell {{{1
line 10: "               Permission is hereby granted to use and distribute this code,
line 11: "               with or without modifications, provided that this copyright
line 12: "               notice is copied with it. Like anything else that's free,
line 13: "               netrw.vim, netrwPlugin.vim, and netrwSettings.vim are provided
line 14: "               *as is* and comes with no warranty of any kind, either
line 15: "               expressed or implied. By using this plugin, you agree that
line 16: "               in no event will the copyright holder be liable for any damages
line 17: "               resulting from the use of this software.
line 18: "
line 19: "  But be doers of the Word, and not only hearers, deluding your own selves {{{1
line 20: "  (James 1:22 RSV)
line 21: " =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
line 22: " Load Once: {{{1
line 23: if &cp || exists("g:loaded_netrwPlugin")
line 24:  finish
line 25: endif
line 26: let g:loaded_netrwPlugin = "v173"
line 27: let s:keepcpo = &cpo
line 28: set cpo&vim
line 29: "DechoRemOn
line 30: 
line 31: " ---------------------------------------------------------------------
line 32: " Public Interface: {{{1
line 33: 
line 34: " Local Browsing Autocmds: {{{2
line 35: augroup FileExplorer
line 36:  au!
line 37:  au BufLeave *  if &ft != "netrw"|let w:netrw_prvfile= expand("%:p")|endif
line 38:  au BufEnter *^Isil call s:LocalBrowse(expand("<amatch>"))
line 39:  au VimEnter *^Isil call s:VimEnter(expand("<amatch>"))
line 40:  if has("win32")
line 41:   au BufEnter .* sil call s:LocalBrowse(expand("<amatch>"))
line 42:  endif
line 43: augroup END
line 44: 
line 45: " Network Browsing Reading Writing: {{{2
line 46: augroup Network
line 47:  au!
line 48:  au BufReadCmd   file://*^I^I^I^I^I^I^I^I^I^I^Icall netrw#FileUrlEdit(expand("<amatch>"))
line 49:  au BufReadCmd   ftp://*,rcp://*,scp://*,http://*,https://*,dav://*,davs://*,rsync://*,sftp://*^Iexe "sil doau BufReadPre ".fnameescape(expand("<amatch>"))|call netrw#Nread(2,expand("<amatch>"))|exe "sil doau BufReadPost ".fnameescape(expand("<amatch>"))
line 50:  au FileReadCmd  ftp://*,rcp://*,scp://*,http://*,file://*,https://*,dav://*,davs://*,rsync://*,sftp://*^Iexe "sil doau FileReadPre ".fnameescape(expand("<amatch>"))|call netrw#Nread(1,expand("<amatch>"))|exe "sil doau FileReadPost ".fnameescape(expand("<amatch>"))
line 51:  au BufWriteCmd  ftp://*,rcp://*,scp://*,http://*,file://*,dav://*,davs://*,rsync://*,sftp://*^I^I^Iexe "sil doau BufWritePre ".fnameescape(expand("<amatch>"))|exe 'Nwrite '.fnameescape(expand("<amatch>"))|exe "sil doau BufWritePost ".fnameescape(expand("<amatch>"))
line 52:  au FileWriteCmd ftp://*,rcp://*,scp://*,http://*,file://*,dav://*,davs://*,rsync://*,sftp://*^I^I^Iexe "sil doau FileWritePre ".fnameescape(expand("<amatch>"))|exe "'[,']".'Nwrite '.fnameescape(expand("<amatch>"))|exe "sil doau FileWritePost ".fnameescape(expand("<amatch>"))
line 53:  try
line 54:   au SourceCmd   ftp://*,rcp://*,scp://*,http://*,file://*,https://*,dav://*,davs://*,rsync://*,sftp://*^Iexe 'Nsource '.fnameescape(expand("<amatch>"))
line 55:  catch /^Vim\%((\a\+)\)\=:E216/
line 56:   au SourcePre   ftp://*,rcp://*,scp://*,http://*,file://*,https://*,dav://*,davs://*,rsync://*,sftp://*^Iexe 'Nsource '.fnameescape(expand("<amatch>"))
line 57:  endtry
line 58: augroup END
line 59: 
line 60: " Commands: :Nread, :Nwrite, :NetUserPass {{{2
line 61: com! -count=1 -nargs=*^INread^I^Ilet s:svpos= winsaveview()<bar>call netrw#NetRead(<count>,<f-args>)<bar>call winrestview(s:svpos)
line 62: com! -range=% -nargs=*^INwrite^I^Ilet s:svpos= winsaveview()<bar><line1>,<line2>call netrw#NetWrite(<f-args>)<bar>call winrestview(s:svpos)
line 63: com! -nargs=*^I^INetUserPass^Icall NetUserPass(<f-args>)
line 64: com! -nargs=*^I        Nsource^I^Ilet s:svpos= winsaveview()<bar>call netrw#NetSource(<f-args>)<bar>call winrestview(s:svpos)
line 65: com! -nargs=?^I^INtree^I^Icall netrw#SetTreetop(1,<q-args>)
line 66: 
line 67: " Commands: :Explore, :Sexplore, Hexplore, Vexplore, Lexplore {{{2
line 68: com! -nargs=* -bar -bang -count=0 -complete=dir^IExplore^I^Icall netrw#Explore(<count>,0,0+<bang>0,<q-args>)
line 69: com! -nargs=* -bar -bang -count=0 -complete=dir^ISexplore^Icall netrw#Explore(<count>,1,0+<bang>0,<q-args>)
line 70: com! -nargs=* -bar -bang -count=0 -complete=dir^IHexplore^Icall netrw#Explore(<count>,1,2+<bang>0,<q-args>)
line 71: com! -nargs=* -bar -bang -count=0 -complete=dir^IVexplore^Icall netrw#Explore(<count>,1,4+<bang>0,<q-args>)
line 72: com! -nargs=* -bar       -count=0 -complete=dir^ITexplore^Icall netrw#Explore(<count>,0,6        ,<q-args>)
line 73: com! -nargs=* -bar -bang^I^I^INexplore^Icall netrw#Explore(-1,0,0,<q-args>)
line 74: com! -nargs=* -bar -bang^I^I^IPexplore^Icall netrw#Explore(-2,0,0,<q-args>)
line 75: com! -nargs=* -bar -bang -count=0 -complete=dir Lexplore^Icall netrw#Lexplore(<count>,<bang>0,<q-args>)
line 76: 
line 77: " Commands: NetrwSettings {{{2
line 78: com! -nargs=0^INetrwSettings^Icall netrwSettings#NetrwSettings()
line 79: com! -bang^INetrwClean^Icall netrw#Clean(<bang>0)
line 80: 
line 81: " Maps:
line 82: if !exists("g:netrw_nogx")
line 83:  if maparg('gx','n') == ""
line 84:   if !hasmapto('<Plug>NetrwBrowseX')
line 85:    nmap <unique> gx <Plug>NetrwBrowseX
line 86:   endif
line 87:   nno <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<cr>
line 88:  endif
line 89:  if maparg('gx','x') == ""
line 90:   if !hasmapto('<Plug>NetrwBrowseXVis')
line 91:    xmap <unique> gx <Plug>NetrwBrowseXVis
line 92:   endif
line 93:   xno <silent> <Plug>NetrwBrowseXVis :<c-u>call netrw#BrowseXVis()<cr>
line 94:  endif
line 95: endif
line 96: if exists("g:netrw_usetab") && g:netrw_usetab
line 97:  if maparg('<c-tab>','n') == ""
line 98:   nmap <unique> <c-tab> <Plug>NetrwShrink
line 99:  endif
line 100:  nno <silent> <Plug>NetrwShrink :call netrw#Shrink()<cr>
line 101: endif
line 102: 
line 103: " ---------------------------------------------------------------------
line 104: " LocalBrowse: invokes netrw#LocalBrowseCheck() on directory buffers {{{2
line 105: fun! s:LocalBrowse(dirname)
line 149: 
line 150: " ---------------------------------------------------------------------
line 151: " s:VimEnter: after all vim startup stuff is done, this function is called. {{{2
line 152: "             Its purpose: to look over all windows and run s:LocalBrowse() on
line 153: "             them, which checks if they're directories and will create a directory
line 154: "             listing when appropriate.
line 155: "             It also sets s:vimentered, letting s:LocalBrowse() know that s:VimEnter()
line 156: "             has already been called.
line 157: fun! s:VimEnter(dirname)
line 177: 
line 178: " ---------------------------------------------------------------------
line 179: " NetrwStatusLine: {{{1
line 180: fun! NetrwStatusLine()
line 191: 
line 192: " ------------------------------------------------------------------------
line 193: " NetUserPass: set username and password for subsequent ftp transfer {{{1
line 194: "   Usage:  :call NetUserPass()^I^I^I-- will prompt for userid and password
line 195: "^I    :call NetUserPass("uid")^I^I-- will prompt for password
line 196: "^I    :call NetUserPass("uid","password") -- sets global userid and password
line 197: fun! NetUserPass(...)
line 221: 
line 222: " ------------------------------------------------------------------------
line 223: " Modelines And Restoration: {{{1
line 224: let &cpo= s:keepcpo
line 225: unlet s:keepcpo
line 226: " vim:ts=8 fdm=marker
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/netrwPlugin.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/osc52.lua
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/osc52.lua"
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/osc52.lua
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/rplugin.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/rplugin.vim"
line 1: if exists('g:loaded_remote_plugins')
line 2:   finish
line 3: endif
line 4: let g:loaded_remote_plugins = '/path/to/manifest'
line 5: 
line 6: " Get the path to the rplugin manifest file.
line 7: function! s:GetManifestPath() abort
line 26: 
line 27: " Old manifest file based on known script locations.
line 28: function! s:GetOldManifestPaths() abort
line 43: 
line 44: function! s:GetManifest() abort
line 57: 
line 58: function! s:LoadRemotePlugins() abort
line 64: 
line 65: command! -bar UpdateRemotePlugins call remote#host#UpdateRemotePlugins()
line 66: 
line 67: if index(v:argv, "--clean") < 0
line 68:   call s:LoadRemotePlugins()
calling <SNR>22_LoadRemotePlugins()

line 1:   let g:loaded_remote_plugins = s:GetManifest()
calling <SNR>22_GetManifest()

line 1:   let manifest = s:GetManifestPath()
calling <SNR>22_GetManifestPath()

line 1:   let manifest_base = ''
line 2: 
line 3:   if exists('$NVIM_RPLUGIN_MANIFEST')
line 4:     return fnamemodify($NVIM_RPLUGIN_MANIFEST, ':p')
line 5:   endif
line 6: 
line 7:   let dest = stdpath('data')
line 8:   if !empty(dest)
line 9:     if !isdirectory(dest)
line 10:       if getftype(dest) != "link"
line 11:         call mkdir(dest, 'p', 0700)
line 12:       endif
line 13:     endif
line 14:     let manifest_base = dest
line 15:   endif
line 16: 
line 17:   return manifest_base.'/rplugin.vim'
<SNR>22_GetManifestPath returning '/home/server01/.local/share/nvim/rplugin.vim'

continuing in <SNR>22_GetManifest

line 2:   if !filereadable(manifest)
line 3:     " Check if an old manifest file exists and move it to the new location.
line 4:     for old_manifest in s:GetOldManifestPaths()
calling <SNR>22_GetOldManifestPaths()

line 1:   let prefix = exists('$MYVIMRC') ? $MYVIMRC : matchstr(get(split(execute('scriptnames'), '\n'), 0, ''), '\f\+$')
line 4:   let origpath = fnamemodify(expand(prefix, 1), ':h').'/.'.fnamemodify(prefix, ':t').'-rplugin~'
line 6:   if !has('win32')
line 7:     return [origpath]
<SNR>22_GetOldManifestPaths returning ['/home/server01/.config/nvim/.init.lua-rplugin~']

continuing in <SNR>22_GetManifest

line 5:       if filereadable(old_manifest)
line 6:         call rename(old_manifest, manifest)
line 7:         break
line 8:       endif
line 9:     endfor
line 4:     for old_manifest in s:GetOldManifestPaths()
line 5:       if filereadable(old_manifest)
line 6:         call rename(old_manifest, manifest)
line 7:         break
line 8:       endif
line 9:     endfor
line 10:   endif
line 11:   return manifest
<SNR>22_GetManifest returning '/home/server01/.local/share/nvim/rplugin.vim'

continuing in <SNR>22_LoadRemotePlugins

line 2:   if filereadable(g:loaded_remote_plugins)
line 3:     execute 'source' fnameescape(g:loaded_remote_plugins)
line 4:   endif
<SNR>22_LoadRemotePlugins returning #0

continuing in /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/rplugin.vim

line 69: endif
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/rplugin.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/shada.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/shada.vim"
line 1: if exists('g:loaded_shada_plugin')
line 2:   finish
line 3: endif
line 4: let g:loaded_shada_plugin = 1
line 5: 
line 6: augroup ShaDaCommands
line 7:   autocmd!
line 8:   autocmd BufReadCmd *.shada,*.shada.tmp.[a-z] :if !empty(v:cmdarg)|throw '++opt not supported'|endif |call setline('.', shada#get_strings(readfile(expand('<afile>'),'b'))) |setlocal filetype=shada
line 12:   autocmd FileReadCmd *.shada,*.shada.tmp.[a-z] :if !empty(v:cmdarg)|throw '++opt not supported'|endif |call append("'[", shada#get_strings(readfile(expand('<afile>'), 'b')))
line 15:   autocmd BufWriteCmd *.shada,*.shada.tmp.[a-z] :if !empty(v:cmdarg)|throw '++opt not supported'|endif |if writefile(shada#get_binstrings(getline(1, '$')),expand('<afile>'), 'b') == 0 |  let &l:modified = (expand('<afile>') is# bufname(+expand('<abuf>'))? 0: stridx(&cpoptions, '+') != -1) |endif
line 23:   autocmd FileWriteCmd *.shada,*.shada.tmp.[a-z] :if !empty(v:cmdarg)|throw '++opt not supported'|endif |call writefile(shada#get_binstrings(getline(min([line("'["), line("']")]),max([line("'["), line("']")]))),expand('<afile>'),'b')
line 30:   autocmd FileAppendCmd *.shada,*.shada.tmp.[a-z] :if !empty(v:cmdarg)|throw '++opt not supported'|endif |call writefile(shada#get_binstrings(getline(min([line("'["), line("']")]),max([line("'["), line("']")]))),expand('<afile>'),'ab')
line 37:   autocmd SourceCmd *.shada,*.shada.tmp.[a-z] :execute 'rshada' fnameescape(expand('<afile>'))
line 39: augroup END
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/shada.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/spellfile.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/spellfile.vim"
line 1: " Vim plugin for downloading spell files
line 2: 
line 3: if exists("loaded_spellfile_plugin") || &cp || exists("#SpellFileMissing")
line 4:   finish
line 5: endif
line 6: let loaded_spellfile_plugin = 1
line 7: 
line 8: autocmd SpellFileMissing * call spellfile#LoadFile(expand('<amatch>'))
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/spellfile.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/tarPlugin.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/tarPlugin.vim"
line 1: " tarPlugin.vim -- a Vim plugin for browsing tarfiles
line 2: " Original was copyright (c) 2002, Michael C. Toren <mct@toren.net>
line 3: " Modified by Charles E. Campbell
line 4: " Distributed under the GNU General Public License.
line 5: "
line 6: " Updates are available from <http://michael.toren.net/code/>.  If you
line 7: " find this script useful, or have suggestions for improvements, please
line 8: " let me know.
line 9: " Also look there for further comments and documentation.
line 10: "
line 11: " This part only sets the autocommands.  The functions are in autoload/tar.vim.
line 12: " ---------------------------------------------------------------------
line 13: "  Load Once: {{{1
line 14: if &cp || exists("g:loaded_tarPlugin")
line 15:  finish
line 16: endif
line 17: let g:loaded_tarPlugin = "v32"
line 18: let s:keepcpo          = &cpo
line 19: set cpo&vim
line 20: 
line 21: " ---------------------------------------------------------------------
line 22: "  Public Interface: {{{1
line 23: augroup tar
line 24:   au!
line 25:   au BufReadCmd   tarfile::*^Icall tar#Read(expand("<amatch>"), 1)
line 26:   au FileReadCmd  tarfile::*^Icall tar#Read(expand("<amatch>"), 0)
line 27:   au BufWriteCmd  tarfile::*^Icall tar#Write(expand("<amatch>"))
line 28:   au FileWriteCmd tarfile::*^Icall tar#Write(expand("<amatch>"))
line 29: 
line 30:   if has("unix")
line 31:    au BufReadCmd   tarfile::*/*^Icall tar#Read(expand("<amatch>"), 1)
line 32:    au FileReadCmd  tarfile::*/*^Icall tar#Read(expand("<amatch>"), 0)
line 33:    au BufWriteCmd  tarfile::*/*^Icall tar#Write(expand("<amatch>"))
line 34:    au FileWriteCmd tarfile::*/*^Icall tar#Write(expand("<amatch>"))
line 35:   endif
line 36: 
line 37:   au BufReadCmd   *.tar.gz^I^Icall tar#Browse(expand("<amatch>"))
line 38:   au BufReadCmd   *.tar^I^I^Icall tar#Browse(expand("<amatch>"))
line 39:   au BufReadCmd   *.lrp^I^I^Icall tar#Browse(expand("<amatch>"))
line 40:   au BufReadCmd   *.tar.bz2^I^Icall tar#Browse(expand("<amatch>"))
line 41:   au BufReadCmd   *.tar.Z^I^Icall tar#Browse(expand("<amatch>"))
line 42:   au BufReadCmd   *.tbz^I^I^Icall tar#Browse(expand("<amatch>"))
line 43:   au BufReadCmd   *.tgz^I^I^Icall tar#Browse(expand("<amatch>"))
line 44:   au BufReadCmd   *.tar.lzma^Icall tar#Browse(expand("<amatch>"))
line 45:   au BufReadCmd   *.tar.xz^I^Icall tar#Browse(expand("<amatch>"))
line 46:   au BufReadCmd   *.txz^I^I^Icall tar#Browse(expand("<amatch>"))
line 47:   au BufReadCmd   *.tar.zst^I^Icall tar#Browse(expand("<amatch>"))
line 48:   au BufReadCmd   *.tzst^I^I^Icall tar#Browse(expand("<amatch>"))
line 49: augroup END
line 50: 
line 51: " ---------------------------------------------------------------------
line 52: " Restoration And Modelines: {{{1
line 53: " vim: fdm=marker
line 54: let &cpo= s:keepcpo
line 55: unlet s:keepcpo
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/tarPlugin.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/tohtml.lua
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/tohtml.lua"
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/tohtml.lua
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/tutor.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/tutor.vim"
line 1: if exists('g:loaded_tutor_mode_plugin') || &compatible
line 2:     finish
line 3: endif
line 4: let g:loaded_tutor_mode_plugin = 1
line 5: 
line 6: command! -nargs=? -complete=custom,tutor#TutorCmdComplete Tutor call tutor#TutorCmd(<q-args>)
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/tutor.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/zipPlugin.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/zipPlugin.vim"
line 1: " zipPlugin.vim: Handles browsing zipfiles
line 2: "            PLUGIN PORTION
line 3: " Date:^I^I^IDec 07, 2021
line 4: " Maintainer:^IThis runtime file is looking for a new maintainer.
line 5: " Former Maintainer:^ICharles E Campbell
line 6: " License:^I^IVim License  (see vim's :help license)
line 7: " Copyright:    Copyright (C) 2005-2016 Charles E. Campbell {{{1
line 8: "               Permission is hereby granted to use and distribute this code,
line 9: "               with or without modifications, provided that this copyright
line 10: "               notice is copied with it. Like anything else that's free,
line 11: "               zipPlugin.vim is provided *as is* and comes with no warranty
line 12: "               of any kind, either expressed or implied. By using this
line 13: "               plugin, you agree that in no event will the copyright
line 14: "               holder be liable for any damages resulting from the use
line 15: "               of this software.
line 16: "
line 17: " (James 4:8 WEB) Draw near to God, and he will draw near to you.
line 18: " Cleanse your hands, you sinners; and purify your hearts, you double-minded.
line 19: " ---------------------------------------------------------------------
line 20: " Load Once: {{{1
line 21: if &cp || exists("g:loaded_zipPlugin")
line 22:  finish
line 23: endif
line 24: let g:loaded_zipPlugin = "v33"
line 25: let s:keepcpo          = &cpo
line 26: set cpo&vim
line 27: 
line 28: " ---------------------------------------------------------------------
line 29: " Options: {{{1
line 30: if !exists("g:zipPlugin_ext")
line 31:  let g:zipPlugin_ext='*.aar,*.apk,*.celzip,*.crtx,*.docm,*.docx,*.dotm,*.dotx,*.ear,*.epub,*.gcsx,*.glox,*.gqsx,*.ja,*.jar,*.kmz,*.odb,*.odc,*.odf,*.odg,*.odi,*.odm,*.odp,*.ods,*.odt,*.otc,*.otf,*.otg,*.oth,*.oti,*.otp,*.ots,*.ott,*.oxt,*.potm,*.potx,*.ppam,*.ppsm,*.ppsx,*.pptm,*.pptx,*.sldx,*.thmx,*.vdw,*.war,*.wsz,*.xap,*.xlam,*.xlsb,*.xlsm,*.xlsx,*.xltm,*.xltx,*.xpi,*.zip'
line 32: endif
line 33: 
line 34: " ---------------------------------------------------------------------
line 35: " Public Interface: {{{1
line 36: augroup zip
line 37:  au!
line 38:  au BufReadCmd   zipfile:*^Icall zip#Read(expand("<amatch>"), 1)
line 39:  au FileReadCmd  zipfile:*^Icall zip#Read(expand("<amatch>"), 0)
line 40:  au BufWriteCmd  zipfile:*^Icall zip#Write(expand("<amatch>"))
line 41:  au FileWriteCmd zipfile:*^Icall zip#Write(expand("<amatch>"))
line 42: 
line 43:  if has("unix")
line 44:   au BufReadCmd   zipfile:*/*^Icall zip#Read(expand("<amatch>"), 1)
line 45:   au FileReadCmd  zipfile:*/*^Icall zip#Read(expand("<amatch>"), 0)
line 46:   au BufWriteCmd  zipfile:*/*^Icall zip#Write(expand("<amatch>"))
line 47:   au FileWriteCmd zipfile:*/*^Icall zip#Write(expand("<amatch>"))
line 48:  endif
line 49: 
line 50:  exe "au BufReadCmd ".g:zipPlugin_ext.' call zip#Browse(expand("<amatch>"))'
line 50: au BufReadCmd *.aar,*.apk,*.celzip,*.crtx,*.docm,*.docx,*.dotm,*.dotx,*.ear,*.epub,*.gcsx,*.glox,*.gqsx,*.ja,*.jar,*.kmz,*.odb,*.odc,*.odf,*.odg,*.odi,*.odm,*.odp,*.ods,*.odt,*.otc,*.otf,*.otg,*.oth,*.oti,*.otp,*.ots,*.ott,*.oxt,*.potm,*.potx,*.ppam,*.ppsm,*.ppsx,*.pptm,*.pptx,*.sldx,*.thmx,*.vdw,*.war,*.wsz,*.xap,*.xlam,*.xlsb,*.xlsm,*.xlsx,*.xltm,*.xltx,*.xpi,*.zip call zip#Browse(expand("<amatch>"))
line 51: augroup END
line 52: 
line 53: " ---------------------------------------------------------------------
line 54: "  Restoration And Modelines: {{{1
line 55: "  vim: fdm=marker
line 56: let &cpo= s:keepcpo
line 57: unlet s:keepcpo
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/zipPlugin.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing User Autocommands for "LazyDone"
autocommand <Lua 33: ~/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/util.lua:183>

Executing: 
finished sourcing /home/server01/.config/nvim/init.lua
Searching for "filetype.lua filetype.vim" in runtime path
Searching for "/home/server01/.config/nvim/filetype.lua"
Searching for "/home/server01/.config/nvim/filetype.vim"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/filetype.lua"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/filetype.vim"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/filetype.lua"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/filetype.vim"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/filetype.lua"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/filetype.vim"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/filetype.lua"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/filetype.vim"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/filetype.lua"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/filetype.vim"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/filetype.lua"
sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/filetype.lua"
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/filetype.lua
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/filetype.vim"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/filetype.lua"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/filetype.vim"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/filetype.lua"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/filetype.vim"
Searching for "/home/server01/.local/state/nvim/lazy/readme/filetype.lua"
Searching for "/home/server01/.local/state/nvim/lazy/readme/filetype.vim"
Executing: so $VIMRUNTIME/syntax/syntax.vim
sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/syntax/syntax.vim"
line 1: " Vim syntax support file
line 2: " Maintainer:^IThe Vim Project <https://github.com/vim/vim>
line 3: " Last Change:^I2023 Aug 10
line 4: " Former Maintainer:^IBram Moolenaar <Bram@vim.org>
line 5: 
line 6: " This file is used for ":syntax on".
line 7: " It installs the autocommands and starts highlighting for all buffers.
line 8: 
line 9: if !has("syntax")
line 10:   finish
line 11: endif
line 12: 
line 13: " If Syntax highlighting appears to be on already, turn it off first, so that
line 14: " any leftovers are cleared.
line 15: if exists("syntax_on") || exists("syntax_manual")
line 16:   so <sfile>:p:h/nosyntax.vim
line 17: endif
line 18: 
line 19: " Load the Syntax autocommands and set the default methods for highlighting.
line 20: runtime syntax/synload.vim
Searching for "syntax/synload.vim" in runtime path
Searching for "/home/server01/.config/nvim/syntax/synload.vim"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/syntax/synload.vim"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/syntax/synload.vim"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/syntax/synload.vim"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/syntax/synload.vim"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/syntax/synload.vim"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/syntax/synload.vim"
line 20: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/syntax/synload.vim"
line 1: " Vim syntax support file
line 2: " Maintainer:^IThe Vim Project <https://github.com/vim/vim>
line 3: " Last Change:^I2023 Aug 10
line 4: " Former Maintainer:^IBram Moolenaar <Bram@vim.org>
line 5: 
line 6: " This file sets up for syntax highlighting.
line 7: " It is loaded from "syntax.vim" and "manual.vim".
line 8: " 1. Set the default highlight groups.
line 9: " 2. Install Syntax autocommands for all the available syntax files.
line 10: 
line 11: if !has("syntax")
line 12:   finish
line 13: endif
line 14: 
line 15: " let others know that syntax has been switched on
line 16: let syntax_on = 1
line 17: 
line 18: " Line continuation is used here, remove 'C' from 'cpoptions'
line 19: let s:cpo_save = &cpo
line 20: set cpo&vim
line 21: 
line 22: " First remove all old syntax autocommands.
line 23: au! Syntax
line 24: 
line 25: au Syntax *^I^Icall s:SynSet()
line 26: 
line 27: fun! s:SynSet()
line 58: 
line 59: 
line 60: " Handle adding doxygen to other languages (C, C++, C#, IDL, java, php, DataScript)
line 61: au Syntax c,cpp,cs,idl,java,php,datascript if (exists('b:load_doxygen_syntax') && b:load_doxygen_syntax)^I|| (exists('g:load_doxygen_syntax') && g:load_doxygen_syntax)   | runtime! syntax/doxygen.vim | endif
line 66: 
line 67: 
line 68: " Source the user-specified syntax highlighting file
line 69: if exists("mysyntaxfile")
line 70:   let s:fname = expand(mysyntaxfile)
line 71:   if filereadable(s:fname)
line 72:     execute "source " . fnameescape(s:fname)
line 73:   endif
line 74: endif
line 75: 
line 76: " Restore 'cpoptions'
line 77: let &cpo = s:cpo_save
line 78: unlet s:cpo_save
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/syntax/synload.vim
continuing in /opt/nvim-linux-x86_64/share/nvim/runtime/syntax/syntax.vim
line 21: 
line 22: " Load the FileType autocommands if not done yet.
line 23: if exists("did_load_filetypes")
line 24:   let s:did_ft = 1
line 25: else
line 26:   filetype on
line 27:   let s:did_ft = 0
line 28: endif
line 29: 
line 30: " Set up the connection between FileType and Syntax autocommands.
line 31: " This makes the syntax automatically set when the file type is detected
line 32: " unless treesitter highlighting is enabled.
line 33: " Avoid an error when 'verbose' is set and <amatch> expansion fails.
line 34: augroup syntaxset
line 35:   au! FileType *^Iif !exists('b:ts_highlight') | 0verbose exe "set syntax=" . expand("<amatch>") | endif
line 36: augroup END
line 37: 
line 38: " Execute the syntax autocommands for the each buffer.
line 39: " If the filetype wasn't detected yet, do that now.
line 40: " Always do the syntaxset autocommands, for buffers where the 'filetype'
line 41: " already was set manually (e.g., help buffers).
line 42: doautoall syntaxset FileType
Executing FileType Autocommands for "*"
autocommand if !exists('b:ts_highlight') | 0verbose exe "set syntax=" . expand("<amatch>") | endif

Executing: if !exists('b:ts_highlight') | 0verbose exe "set syntax=" . expand("<amatch>") | endif
Executing:  0verbose exe "set syntax=" . expand("<amatch>") | endif
Executing:  endif
line 43: if !s:did_ft
line 44:   doautoall filetypedetect BufRead
line 45: endif
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/syntax/syntax.vim
Reading ShaDa file "/home/server01/.local/state/nvim/shada/main.shada" info marks oldfiles
Reading ShaDa file "/home/server01/.local/state/nvim/shada/main.shada" marks
Reading undo file: /home/server01/.local/state/nvim/undo/%home%server01%.config%nvim%init.lua
Executing BufReadPost Autocommands for "*"
autocommand <Lua 30: /opt/nvim-linux-x86_64/share/nvim/runtime/filetype.lua:10>

Executing FileType Autocommands for "*"
autocommand call s:LoadFTPlugin()

Executing: call s:LoadFTPlugin()
calling <SNR>3_LoadFTPlugin()

line 1:     if exists("b:undo_ftplugin")
line 2:       exe b:undo_ftplugin
line 3:       unlet! b:undo_ftplugin b:did_ftplugin
line 4:     endif
line 5: 
line 6:     let s = expand("<amatch>")
line 7:     if s != ""
line 8:       if &cpo =~# "S" && exists("b:did_ftplugin")
line 9: ^I" In compatible mode options are reset to the global values, need to
line 10: ^I" set the local values also when a plugin was already used.
line 11: ^Iunlet b:did_ftplugin
line 12:       endif
line 13: 
line 14:       " When there is a dot it is used to separate filetype names.  Thus for
line 15:       " "aaa.bbb" load "aaa" and then "bbb".
line 16:       for name in split(s, '\.')
line 17:         " Load Lua ftplugins after Vim ftplugins _per directory_
line 18:         " TODO(clason): use nvim__get_runtime when supports globs and modeline
line 19:         " XXX: "[.]" in the first pattern makes it a wildcard on Windows
line 20:         exe $'runtime! ftplugin/{name}[.]{{vim,lua}} ftplugin/{name}_*.{{vim,lua}} ftplugin/{name}/*.{{vim,lua}}'
line 20: runtime! ftplugin/lua[.]{vim,lua} ftplugin/lua_*.{vim,lua} ftplugin/lua/*.{vim,lua}
Searching for "ftplugin/lua[.]{vim,lua} ftplugin/lua_*.{vim,lua} ftplugin/lua/*.{vim,lua}" in runtime path
Searching for "/home/server01/.config/nvim/ftplugin/lua[.]{vim,lua}"
Searching for "/home/server01/.config/nvim/ftplugin/lua_*.{vim,lua}"
Searching for "/home/server01/.config/nvim/ftplugin/lua/*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/ftplugin/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/ftplugin/lua_*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/ftplugin/lua/*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/ftplugin/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/ftplugin/lua_*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/ftplugin/lua/*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/ftplugin/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/ftplugin/lua_*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/ftplugin/lua/*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/ftplugin/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/ftplugin/lua_*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/ftplugin/lua/*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/ftplugin/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/ftplugin/lua_*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/ftplugin/lua/*.{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin/lua[.]{vim,lua}"
line 20: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin/lua.vim"
line 1: " Vim filetype plugin file.
line 2: " Language:^I^ILua
line 3: " Maintainer:^I^IDoug Kearns <dougkearns@gmail.com>
line 4: " Previous Maintainer:^IMax Ischenko <mfi@ukr.net>
line 5: " Contributor:^I^IDorai Sitaram <ds26@gte.com>
line 6: "^I^I^IC.D. MacEachern <craig.daniel.maceachern@gmail.com>
line 7: "^I^I^ITyler Miller <tmillr@proton.me>
line 8: " Last Change:^I^I2024 Jan 14
line 9: 
line 10: if exists("b:did_ftplugin")
line 11:   finish
line 12: endif
line 13: let b:did_ftplugin = 1
line 14: 
line 15: let s:cpo_save = &cpo
line 16: set cpo&vim
line 17: 
line 18: setlocal comments=:---,:--
line 19: setlocal commentstring=--\ %s
line 20: setlocal formatoptions-=t formatoptions+=croql
line 21: 
line 22: let &l:define = '\<function\|\<local\%(\s\+function\)\='
line 23: 
line 24: " TODO: handle init.lua
line 25: setlocal includeexpr=tr(v:fname,'.','/')
line 26: setlocal suffixesadd=.lua
line 27: 
line 28: let b:undo_ftplugin = "setlocal cms< com< def< fo< inex< sua<"
line 29: 
line 30: if exists("loaded_matchit") && !exists("b:match_words")
line 31:   let b:match_ignorecase = 0
line 32:   let b:match_words = '\<\%(do\|function\|if\)\>:' .. '\<\%(return\|else\|elseif\)\>:' .. '\<end\>,' .. '\<repeat\>:\<until\>,' .. '\%(--\)\=\[\(=*\)\[:]\1]'
line 38:   let b:undo_ftplugin ..= " | unlet! b:match_words b:match_ignorecase"
line 39: endif
line 40: 
line 41: if (has("gui_win32") || has("gui_gtk")) && !exists("b:browsefilter")
line 42:   let b:browsefilter = "Lua Source Files (*.lua)\t*.lua\n"
line 43:   if has("win32")
line 44:     let b:browsefilter ..= "All Files (*.*)\t*\n"
line 45:   else
line 46:     let b:browsefilter ..= "All Files (*)\t*\n"
line 47:   endif
line 48:   let b:undo_ftplugin ..= " | unlet! b:browsefilter"
line 49: endif
line 50: 
line 51: let &cpo = s:cpo_save
line 52: unlet s:cpo_save
line 53: 
line 54: " vim: nowrap sw=2 sts=2 ts=8 noet:
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin/lua.vim
continuing in <SNR>3_LoadFTPlugin
line 20: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin/lua.lua"
Searching for "parser/lua.*" in runtime path
Searching for "/home/server01/.config/nvim/parser/lua.*"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/parser/lua.*"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/parser/lua.*"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/parser/lua.*"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/parser/lua.*"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/parser/lua.*"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/parser/lua.*"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/parser/lua.*"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/parser/lua.*"
Searching for "queries/lua/injections.scm" in runtime path
Searching for "/home/server01/.config/nvim/queries/lua/injections.scm"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/queries/lua/injections.scm"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/queries/lua/injections.scm"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/queries/lua/injections.scm"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/queries/lua/injections.scm"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/queries/lua/injections.scm"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/queries/lua/injections.scm"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/queries/lua/injections.scm"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/queries/lua/injections.scm"
Searching for "/home/server01/.local/state/nvim/lazy/readme/queries/lua/injections.scm"
Executing Syntax Autocommands for "*"
autocommand call s:SynSet()

Executing: call s:SynSet()
calling <SNR>30_SynSet()

line 1:   " clear syntax for :set syntax=OFF  and any syntax name that doesn't exist
line 2:   syn clear
line 3:   if exists("b:current_syntax")
line 4:     unlet b:current_syntax
line 5:   endif
line 6: 
line 7:   0verbose let s = expand("<amatch>")
line 8:   if s == "ON"
line 9:     " :set syntax=ON
line 10:     if &filetype == ""
line 11:       echohl ErrorMsg
line 12:       echo "filetype unknown"
line 13:       echohl None
line 14:     endif
line 15:     let s = &filetype
line 16:   elseif s == "OFF"
line 17:     let s = ""
line 18:   endif
line 19: 
line 20:   if s != ""
line 21:     " Load the syntax file(s).  When there are several, separated by dots,
line 22:     " load each in sequence.  Skip empty entries.
line 23:     for name in split(s, '\.')
line 24:       if !empty(name)
line 25:         " XXX: "[.]" in the first pattern makes it a wildcard on Windows
line 26:         exe $'runtime! syntax/{name}[.]{{vim,lua}} syntax/{name}/*.{{vim,lua}}'
line 27:       endif
line 28:     endfor
line 29:   endif
<SNR>30_SynSet returning #0

continuing in Syntax Autocommands for "*"

finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin/lua.lua
continuing in <SNR>3_LoadFTPlugin
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin/lua_*.{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin/lua/*.{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/ftplugin/lua[.]{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/ftplugin/lua_*.{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/ftplugin/lua/*.{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/ftplugin/lua[.]{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/ftplugin/lua_*.{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/ftplugin/lua/*.{vim,lua}"
Searching for "/home/server01/.local/state/nvim/lazy/readme/ftplugin/lua[.]{vim,lua}"
Searching for "/home/server01/.local/state/nvim/lazy/readme/ftplugin/lua_*.{vim,lua}"
Searching for "/home/server01/.local/state/nvim/lazy/readme/ftplugin/lua/*.{vim,lua}"
line 21:       endfor
line 16:       for name in split(s, '\.')
line 17:         " Load Lua ftplugins after Vim ftplugins _per directory_
line 18:         " TODO(clason): use nvim__get_runtime when supports globs and modeline
line 19:         " XXX: "[.]" in the first pattern makes it a wildcard on Windows
line 20:         exe $'runtime! ftplugin/{name}[.]{{vim,lua}} ftplugin/{name}_*.{{vim,lua}} ftplugin/{name}/*.{{vim,lua}}'
line 21:       endfor
line 22:     endif
<SNR>3_LoadFTPlugin returning #0

continuing in FileType Autocommands for "*"

Executing FileType Autocommands for "*"
autocommand call s:LoadIndent()

Executing: call s:LoadIndent()
calling <SNR>4_LoadIndent()

line 1:     if exists("b:undo_indent")
line 2:       exe b:undo_indent
line 3:       unlet! b:undo_indent b:did_indent
line 4:     endif
line 5:     let s = expand("<amatch>")
line 6:     if s != ""
line 7:       if exists("b:did_indent")
line 8: ^Iunlet b:did_indent
line 9:       endif
line 10: 
line 11:       " When there is a dot it is used to separate filetype names.  Thus for
line 12:       " "aaa.bbb" load "indent/aaa.vim" and then "indent/bbb.vim".
line 13:       for name in split(s, '\.')
line 14:         " XXX: "[.]" in the pattern makes it a wildcard on Windows
line 15:         exe $'runtime! indent/{name}[.]{{vim,lua}}'
line 15: runtime! indent/lua[.]{vim,lua}
Searching for "indent/lua[.]{vim,lua}" in runtime path
Searching for "/home/server01/.config/nvim/indent/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/indent/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/indent/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/indent/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/indent/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/indent/lua[.]{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/indent/lua[.]{vim,lua}"
line 15: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/indent/lua.vim"
line 1: " Vim indent file
line 2: " Language:^ILua script
line 3: " Maintainer:^IMarcus Aurelius Farias <marcus.cf 'at' bol.com.br>
line 4: " First Author:^IMax Ischenko <mfi 'at' ukr.net>
line 5: " Last Change:^I2017 Jun 13
line 6: "^I^I2022 Sep 07: b:undo_indent added by Doug Kearns
line 7: 
line 8: " Only load this indent file when no other was loaded.
line 9: if exists("b:did_indent")
line 10:   finish
line 11: endif
line 12: let b:did_indent = 1
line 13: 
line 14: setlocal indentexpr=GetLuaIndent()
line 15: 
line 16: " To make Vim call GetLuaIndent() when it finds '\s*end' or '\s*until'
line 17: " on the current line ('else' is default and includes 'elseif').
line 18: setlocal indentkeys+=0=end,0=until
line 19: 
line 20: setlocal autoindent
line 21: 
line 22: let b:undo_indent = "setlocal autoindent< indentexpr< indentkeys<"
line 23: 
line 24: " Only define the function once.
line 25: if exists("*GetLuaIndent")
line 26:   finish
line 27: endif
line 28: 
line 29: function! GetLuaIndent()
line 38: 
line 39: function! GetLuaIndentIntern()
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/indent/lua.vim
continuing in <SNR>4_LoadIndent
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/indent/lua[.]{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/indent/lua[.]{vim,lua}"
Searching for "/home/server01/.local/state/nvim/lazy/readme/indent/lua[.]{vim,lua}"
line 16:       endfor
line 13:       for name in split(s, '\.')
line 14:         " XXX: "[.]" in the pattern makes it a wildcard on Windows
line 15:         exe $'runtime! indent/{name}[.]{{vim,lua}}'
line 16:       endfor
line 17:     endif
<SNR>4_LoadIndent returning #0

continuing in FileType Autocommands for "*"

Executing FileType Autocommands for "*"
autocommand if !exists('b:ts_highlight') | 0verbose exe "set syntax=" . expand("<amatch>") | endif

Executing: if !exists('b:ts_highlight') | 0verbose exe "set syntax=" . expand("<amatch>") | endif
Executing:  0verbose exe "set syntax=" . expand("<amatch>") | endif
Executing:  endif
Executing: 
autocommand if !did_filetype() && expand('<amatch>') !~ g:ft_ignore_pat | runtime! scripts.vim | endif

Executing: if !did_filetype() && expand('<amatch>') !~ g:ft_ignore_pat | runtime! scripts.vim | endif
Executing:  runtime! scripts.vim | endif
Executing:  endif
Executing BufReadPost Autocommands for "*"
autocommand <Lua 68: /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/editorconfig.lua:4>

Executing: 
Executing BufWinEnter Autocommands for "*"
autocommand autocmd SafeState * ++once call s:Highlight_Matching_Pair()

Executing: autocmd SafeState * ++once call s:Highlight_Matching_Pair()
Executing BufEnter Autocommands for "*"
autocommand sil call s:LocalBrowse(expand("<amatch>"))

Executing: sil call s:LocalBrowse(expand("<amatch>"))
calling <SNR>20_LocalBrowse('/home/server01/.config/nvim/init.lua')

line 1:   " Unfortunate interaction -- only DechoMsg debugging calls can be safely used here.
line 2:   " Otherwise, the BufEnter event gets triggered when attempts to write to
line 3:   " the DBG buffer are made.
line 4: 
line 5:   if !exists("s:vimentered")
line 6:    " If s:vimentered doesn't exist, then the VimEnter event hasn't fired.  It will,
line 7:    " and so s:VimEnter() will then be calling this routine, but this time with s:vimentered defined.
line 8: "   call Dfunc("s:LocalBrowse(dirname<".a:dirname.">)  (s:vimentered doesn't exist)")
line 9: "   call Dret("s:LocalBrowse")
line 10:    return
<SNR>20_LocalBrowse returning #0

continuing in BufEnter Autocommands for "*"

Executing VimEnter Autocommands for "*"
autocommand sil call s:VimEnter(expand("<amatch>"))

Executing: sil call s:VimEnter(expand("<amatch>"))
calling <SNR>20_VimEnter('/home/server01/.config/nvim/init.lua')

line 1: "  call Dfunc("s:VimEnter(dirname<".a:dirname.">) expand(%)<".expand("%").">")
line 2:   if has('nvim') || v:version < 802
line 3:   " Johann Höchtl: reported that the call range... line causes an E488: Trailing characters
line 4:   "                error with neovim. I suspect its because neovim hasn't updated with recent
line 5:   "                vim patches. As is, this code will have problems with popup terminals
line 6:   "                instantiated before the VimEnter event runs.
line 7:   " Ingo Karkat  : E488 also in Vim 8.1.1602
line 8:   let curwin       = winnr()
line 9:   let s:vimentered = 1
line 10:   windo call s:LocalBrowse(expand("%:p"))
line 10: call s:LocalBrowse(expand("%:p"))
calling <SNR>20_LocalBrowse('/home/server01/.config/nvim/init.lua')

line 1:   " Unfortunate interaction -- only DechoMsg debugging calls can be safely used here.
line 2:   " Otherwise, the BufEnter event gets triggered when attempts to write to
line 3:   " the DBG buffer are made.
line 4: 
line 5:   if !exists("s:vimentered")
line 6:    " If s:vimentered doesn't exist, then the VimEnter event hasn't fired.  It will,
line 7:    " and so s:VimEnter() will then be calling this routine, but this time with s:vimentered defined.
line 8: "   call Dfunc("s:LocalBrowse(dirname<".a:dirname.">)  (s:vimentered doesn't exist)")
line 9: "   call Dret("s:LocalBrowse")
line 10:    return
line 11:   endif
line 12: 
line 13: "  call Dfunc("s:LocalBrowse(dirname<".a:dirname.">)  (s:vimentered=".s:vimentered.")")
line 14: 
line 15:   if has("amiga")
line 16:    " The check against '' is made for the Amiga, where the empty
line 17:    " string is the current directory and not checking would break
line 18:    " things such as the help command.
line 19: "   call Decho("(LocalBrowse) dirname<".a:dirname.">  (isdirectory, amiga)")
line 20:    if a:dirname != '' && isdirectory(a:dirname)
line 21:     sil! call netrw#LocalBrowseCheck(a:dirname)
line 22:     if exists("w:netrw_bannercnt") && line('.') < w:netrw_bannercnt
line 23:      exe w:netrw_bannercnt
line 24:     endif
line 25:    endif
line 26: 
line 27:   elseif isdirectory(a:dirname)
line 28: "   call Decho("(LocalBrowse) dirname<".a:dirname."> ft=".&ft."  (isdirectory, not amiga)")
line 29: "   call Dredir("LocalBrowse ft last set: ","verbose set ft")
line 30:    " Jul 13, 2021: for whatever reason, preceding the following call with
line 31:    " a   sil!  causes an unbalanced if-endif vim error
line 32:    call netrw#LocalBrowseCheck(a:dirname)
line 33:    if exists("w:netrw_bannercnt") && line('.') < w:netrw_bannercnt
line 34:     exe w:netrw_bannercnt
line 35:    endif
line 36: 
line 37:   else
line 38:    " not a directory, ignore it
line 39: "   call Decho("(LocalBrowse) dirname<".a:dirname."> not a directory, ignoring...")
line 40:   endif
line 41: 
line 42: "  call Dret("s:LocalBrowse")
<SNR>20_LocalBrowse returning #0

continuing in <SNR>20_VimEnter

line 11:   exe curwin."wincmd w"
line 11: 1wincmd w
line 12:  else
line 13:   " the following complicated expression comes courtesy of lacygoill; largely does the same thing as the windo and 
line 14:   " wincmd which are commented out, but avoids some side effects. Allows popup terminal before VimEnter.
line 15:   let s:vimentered = 1
line 16:   call range(1, winnr('$'))->map({_, v -> win_execute(win_getid(v), 'call expand("%:p")->s:LocalBrowse()')})
line 17:  endif
line 18: "  call Dret("s:VimEnter")
<SNR>20_VimEnter returning #0

continuing in VimEnter Autocommands for "*"

Executing UIEnter Autocommands for "*"
autocommand <Lua 31: ~/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/config.lua:327>

Executing: 
autocommand <Lua 79: ~/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/util.lua:189>

Executing: 
Executing SafeState Autocommands for "*"
autocommand call s:Highlight_Matching_Pair()

Executing: call s:Highlight_Matching_Pair()
calling <SNR>19_Highlight_Matching_Pair()

line 1:   if !exists("w:matchparen_ids")
line 2:     let w:matchparen_ids = []
line 3:   endif
line 4:   " Remove any previous match.
line 5:   call s:Remove_Matches()
calling <SNR>19_Remove_Matches()

line 1:   if exists('w:paren_hl_on') && w:paren_hl_on
line 2:     while !empty(w:matchparen_ids)
line 3:       silent! call remove(w:matchparen_ids, 0)->matchdelete()
line 4:     endwhile
line 5:     let w:paren_hl_on = 0
line 6:   endif
<SNR>19_Remove_Matches returning #0

continuing in <SNR>19_Highlight_Matching_Pair

line 6: 
line 7:   " Avoid that we remove the popup menu.
line 8:   " Return when there are no colors (looks like the cursor jumps).
line 9:   if pumvisible() || (&t_Co < 8 && !has("gui_running"))
line 10:     return
line 11:   endif
line 12: 
line 13:   " Get the character under the cursor and check if it's in 'matchpairs'.
line 14:   let c_lnum = line('.')
line 15:   let c_col = col('.')
line 16:   let before = 0
line 17: 
line 18:   let text = getline(c_lnum)
line 19:   let c_before = text->strpart(0, c_col - 1)->slice(-1)
line 20:   let c = text->strpart(c_col - 1)->slice(0, 1)
line 21:   let plist = split(&matchpairs, '.\zs[:,]')
line 22:   let i = index(plist, c)
line 23:   if i < 0
line 24:     " not found, in Insert mode try character before the cursor
line 25:     if c_col > 1 && (mode() == 'i' || mode() == 'R')
line 26:       let before = strlen(c_before)
line 27:       let c = c_before
line 28:       let i = index(plist, c)
line 29:     endif
line 30:     if i < 0
line 31:       " not found, nothing to do
line 32:       return
<SNR>19_Highlight_Matching_Pair returning #0

continuing in SafeState Autocommands for "*"

Searching for "queries/lua/highlights.scm" in runtime path
Searching for "/home/server01/.config/nvim/queries/lua/highlights.scm"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/queries/lua/highlights.scm"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/queries/lua/highlights.scm"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/queries/lua/highlights.scm"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/queries/lua/highlights.scm"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/queries/lua/highlights.scm"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/queries/lua/highlights.scm"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/queries/lua/highlights.scm"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/queries/lua/highlights.scm"
Searching for "/home/server01/.local/state/nvim/lazy/readme/queries/lua/highlights.scm"
Failed to run `config` for nvim-lspconfig

/home/server01/.config/nvim/lua/plugins/lsp.lua:77: module 'cmp_nvim_lsp' not found:
^Ino field package.preload['cmp_nvim_lsp']
cache_loader: module cmp_nvim_lsp not found
cache_loader_lib: module cmp_nvim_lsp not found
^Ino file './cmp_nvim_lsp.lua'
^Ino file '/home/runner/work/neovim/neovim/.deps/usr/share/luajit-2.1/cmp_nvim_lsp.lua'
^Ino file '/usr/local/share/lua/5.1/cmp_nvim_lsp.lua'
^Ino file '/usr/local/share/lua/5.1/cmp_nvim_lsp/init.lua'
^Ino file '/home/runner/work/neovim/neovim/.deps/usr/share/lua/5.1/cmp_nvim_lsp.lua'
^Ino file '/home/runner/work/neovim/neovim/.deps/usr/share/lua/5.1/cmp_nvim_lsp/init.lua'
^Ino file './cmp_nvim_lsp.so'
^Ino file '/usr/local/lib/lua/5.1/cmp_nvim_lsp.so'
^Ino file '/home/runner/work/neovim/neovim/.deps/usr/lib/lua/5.1/cmp_nvim_lsp.so'
^Ino file '/usr/local/lib/lua/5.1/loadall.so'

# stacktrace:
  - lua/plugins/lsp.lua:77 _in_ **config**
  - init.lua:31
Executing TermResponse Autocommands for "*"
autocommand <Lua 22: vim/_defaults.lua:0>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 25: /opt/nvim-linux-x86_64/share/nvim/runtime/lua/vim/termcap.lua:38>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 28: vim/_defaults.lua:0>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 74: /opt/nvim-linux-x86_64/share/nvim/runtime/lua/vim/termcap.lua:38>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 22: vim/_defaults.lua:0>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 25: /opt/nvim-linux-x86_64/share/nvim/runtime/lua/vim/termcap.lua:38>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 28: vim/_defaults.lua:0>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 74: /opt/nvim-linux-x86_64/share/nvim/runtime/lua/vim/termcap.lua:38>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 25: /opt/nvim-linux-x86_64/share/nvim/runtime/lua/vim/termcap.lua:38>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 28: vim/_defaults.lua:0>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 74: /opt/nvim-linux-x86_64/share/nvim/runtime/lua/vim/termcap.lua:38>

Executing: 
Executing User Autocommands for "VeryLazy"
autocommand <Lua 32: ~/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/config.lua:338>

Executing: 


--- Terminal info --- {{{
&term: xterm-256color
Description: xterm with 256 colors
Aliases: xterm-256color
Boolean capabilities:
  auto_left_margin          bw         = false
  auto_right_margin         am         = true
  no_esc_ctlc               xsb        = false
  ceol_standout_glitch      xhp        = false
  eat_newline_glitch        xenl       = true
  erase_overstrike          eo         = false
  generic_type              gn         = false
  hard_copy                 hc         = false
  has_meta_key              km         = true
  has_status_line           hs         = false
  insert_null_glitch        in         = false
  memory_above              da         = false
  memory_below              db         = false
  move_insert_mode          mir        = true
  move_standout_mode        msgr       = true
  over_strike               os         = false
  status_line_esc_ok        eslok      = false
  dest_tabs_magic_smso      xt         = false
  tilde_glitch              hz         = false
  transparent_underline     ul         = false
  xon_xoff                  xon        = false
  needs_xon_xoff            nxon       = false
  prtr_silent               mc5i       = true
  hard_cursor               chts       = false
  non_rev_rmcup             nrrmc      = false
  no_pad_char               npc        = true
  non_dest_scroll_region    ndscr      = false
  can_change                ccc        = true
  back_color_erase          bce        = true
  hue_lightness_saturation  hls        = false
  col_addr_glitch           xhpa       = false
  cr_cancels_micro_mode     crxm       = false
  has_print_wheel           daisy      = false
  row_addr_glitch           xvpa       = false
  semi_auto_right_margin    sam        = false
  cpi_changes_res           cpix       = false
  lpi_changes_res           lpix       = false
  backspaces_with_bs        OTbs       = true
  crt_no_scrolling          OTns       = false
  no_correctly_working_cr   OTnc       = false
  gnu_has_meta_key          OTMT       = false
  linefeed_is_newline       OTNL       = false
  has_hardware_tabs         OTpt       = false
  return_does_clr_eol       OTxr       = false
Numeric capabilities:
  columns                   cols       = 80
  init_tabs                 it         = 8
  lines                     lines      = 24
  lines_of_memory           lm         = -1
  magic_cookie_glitch       xmc        = -1
  padding_baud_rate         pb         = -1
  virtual_terminal          vt         = -1
  width_status_line         wsl        = -1
  num_labels                nlab       = -1
  label_height              lh         = -1
  label_width               lw         = -1
  max_attributes            ma         = -1
  maximum_windows           wnum       = -1
  max_colors                colors     = 256
  max_pairs                 pairs      = 65536
  no_color_video            ncv        = -1
  buffer_capacity           bufsz      = -1
  dot_vert_spacing          spinv      = -1
  dot_horz_spacing          spinh      = -1
  max_micro_address         maddr      = -1
  max_micro_jump            mjump      = -1
  micro_col_size            mcs        = -1
  micro_line_size           mls        = -1
  number_of_pins            npins      = -1
  output_res_char           orc        = -1
  output_res_line           orl        = -1
  output_res_horz_inch      orhi       = -1
  output_res_vert_inch      orvi       = -1
  print_rate                cps        = -1
  wide_char_size            widcs      = -1
  buttons                   btns       = -1
  bit_image_entwining       bitwin     = -1
  bit_image_type            bitype     = -1
  magic_cookie_glitch_ul    OTug       = -1
  carriage_return_delay     OTdC       = -1
  new_line_delay            OTdN       = -1
  backspace_delay           OTdB       = -1
  horizontal_tab_delay      OTdT       = -1
  number_of_function_keys   OTkn       = -1
String capabilities:
  back_tab                  cbt        = ^[[Z
  bell                      bel        = ^G
  carriage_return           cr         = ^M
  change_scroll_region      csr        = ^[[%i%p1%d;%p2%dr
  clear_all_tabs            tbc        = ^[[3g
  clear_screen              clear      = ^[[H^[[2J
  clr_eol                   el         = ^[[K
  clr_eos                   ed         = ^[[J
  column_address            hpa        = ^[[%i%p1%dG
  cursor_address            cup        = ^[[%i%p1%d;%p2%dH
  cursor_down               cud1       = ^@
  cursor_home               home       = ^[[H
  cursor_invisible          civis      = ^[[?25l
  cursor_left               cub1       = ^H
  cursor_normal             cnorm      = ^[[?25h
  cursor_right              cuf1       = ^[[C
  cursor_up                 cuu1       = ^[[A
  cursor_visible            cvvis      = ^[[?12;25h
  delete_character          dch1       = ^[[P
  delete_line               dl1        = ^[[M
  enter_alt_charset_mode    smacs      = ^[(0
  enter_blink_mode          blink      = ^[[5m
  enter_bold_mode           bold       = ^[[1m
  enter_ca_mode             smcup      = ^[[?1049h^[[22;0;0t
  enter_dim_mode            dim        = ^[[2m
  enter_insert_mode         smir       = ^[[4h
  enter_secure_mode         invis      = ^[[8m
  enter_reverse_mode        rev        = ^[[7m
  enter_standout_mode       smso       = ^[[7m
  enter_underline_mode      smul       = ^[[4m
  erase_chars               ech        = ^[[%p1%dX
  exit_alt_charset_mode     rmacs      = ^[(B
  exit_attribute_mode       sgr0       = ^[(B^[[m
  exit_ca_mode              rmcup      = ^[[?1049l^[[23;0;0t
  exit_insert_mode          rmir       = ^[[4l
  exit_standout_mode        rmso       = ^[[27m
  exit_underline_mode       rmul       = ^[[24m
  flash_screen              flash      = ^[[?5h$<100/>^[[?5l
  from_status_line          fsl        = ^G
  init_2string              is2        = ^[[!p^[[?3;4l^[[4l^[>
  insert_line               il1        = ^[[L
  key_backspace             kbs        = ^?
  key_dc                    kdch1      = ^[[3~
  key_down                  kcud1      = ^[OB
  key_f1                    kf1        = ^[OP
  key_f10                   kf10       = ^[[21~
  key_f2                    kf2        = ^[OQ
  key_f3                    kf3        = ^[OR
  key_f4                    kf4        = ^[OS
  key_f5                    kf5        = ^[[15~
  key_f6                    kf6        = ^[[17~
  key_f7                    kf7        = ^[[18~
  key_f8                    kf8        = ^[[19~
  key_f9                    kf9        = ^[[20~
  key_home                  khome      = ^[OH
  key_ic                    kich1      = ^[[2~
  key_left                  kcub1      = ^[OD
  key_npage                 knp        = ^[[6~
  key_ppage                 kpp        = ^[[5~
  key_right                 kcuf1      = ^[OC
  key_sf                    kind       = ^[[1;2B
  key_sr                    kri        = ^[[1;2A
  key_up                    kcuu1      = ^[OA
  keypad_local              rmkx       = ^[[?1l^[>
  keypad_xmit               smkx       = ^[[?1h^[=
  meta_off                  rmm        = ^[[?1034l
  meta_on                   smm        = ^[[?1034h
  newline                   nel        = ^[E
  parm_dch                  dch        = ^[[%p1%dP
  parm_delete_line          dl         = ^[[%p1%dM
  parm_down_cursor          cud        = ^[[%p1%dB
  parm_ich                  ich        = ^[[%p1%d@
  parm_index                indn       = ^[[%p1%dS
  parm_insert_line          il         = ^[[%p1%dL
  parm_left_cursor          cub        = ^[[%p1%dD
  parm_right_cursor         cuf        = ^[[%p1%dC
  parm_rindex               rin        = ^[[%p1%dT
  parm_up_cursor            cuu        = ^[[%p1%dA
  print_screen              mc0        = ^[[i
  prtr_off                  mc4        = ^[[4i
  prtr_on                   mc5        = ^[[5i
  repeat_char               rep        = %p1%c^[[%p2%{1}%-%db
  reset_1string             rs1        = ^[c^[]104^G
  reset_2string             rs2        = ^[[!p^[[?3;4l^[[4l^[>
  restore_cursor            rc         = ^[8
  row_address               vpa        = ^[[%i%p1%dd
  save_cursor               sc         = ^[7
  scroll_forward            ind        = ^@
  scroll_reverse            ri         = ^[M
  set_attributes            sgr        = %?%p9%t^[(0%e^[(B%;^[[0%?%p6%t;1%;%?%p5%t;2%;%?%p2%t;4%;%?%p1%p3%|%t;7%;%?%p4%t;5%;%?%p7%t;8%;m
  set_tab                   hts        = ^[H
  tab                       ht         = 	
  to_status_line            tsl        = ^[]0;
  key_a1                    ka1        = ^[Ow
  key_a3                    ka3        = ^[Oy
  key_b2                    kb2        = ^[Ou
  key_c1                    kc1        = ^[Oq
  key_c3                    kc3        = ^[Os
  acs_chars                 acsc       = ``aaffggiijjkkllmmnnooppqqrrssttuuvvwwxxyyzz{{||}}~~
  key_btab                  kcbt       = ^[[Z
  enter_am_mode             smam       = ^[[?7h
  exit_am_mode              rmam       = ^[[?7l
  key_end                   kend       = ^[OF
  key_enter                 kent       = ^[OM
  key_sdc                   kDC        = ^[[3;2~
  key_send                  kEND       = ^[[1;2F
  key_shome                 kHOM       = ^[[1;2H
  key_sic                   kIC        = ^[[2;2~
  key_sleft                 kLFT       = ^[[1;2D
  key_snext                 kNXT       = ^[[6;2~
  key_sprevious             kPRV       = ^[[5;2~
  key_sright                kRIT       = ^[[1;2C
  key_f11                   kf11       = ^[[23~
  key_f12                   kf12       = ^[[24~
  key_f13                   kf13       = ^[[1;2P
  key_f14                   kf14       = ^[[1;2Q
  key_f15                   kf15       = ^[[1;2R
  key_f16                   kf16       = ^[[1;2S
  key_f17                   kf17       = ^[[15;2~
  key_f18                   kf18       = ^[[17;2~
  key_f19                   kf19       = ^[[18;2~
  key_f20                   kf20       = ^[[19;2~
  key_f21                   kf21       = ^[[20;2~
  key_f22                   kf22       = ^[[21;2~
  key_f23                   kf23       = ^[[23;2~
  key_f24                   kf24       = ^[[24;2~
  key_f25                   kf25       = ^[[1;5P
  key_f26                   kf26       = ^[[1;5Q
  key_f27                   kf27       = ^[[1;5R
  key_f28                   kf28       = ^[[1;5S
  key_f29                   kf29       = ^[[15;5~
  key_f30                   kf30       = ^[[17;5~
  key_f31                   kf31       = ^[[18;5~
  key_f32                   kf32       = ^[[19;5~
  key_f33                   kf33       = ^[[20;5~
  key_f34                   kf34       = ^[[21;5~
  key_f35                   kf35       = ^[[23;5~
  key_f36                   kf36       = ^[[24;5~
  key_f37                   kf37       = ^[[1;6P
  key_f38                   kf38       = ^[[1;6Q
  key_f39                   kf39       = ^[[1;6R
  key_f40                   kf40       = ^[[1;6S
  key_f41                   kf41       = ^[[15;6~
  key_f42                   kf42       = ^[[17;6~
  key_f43                   kf43       = ^[[18;6~
  key_f44                   kf44       = ^[[19;6~
  key_f45                   kf45       = ^[[20;6~
  key_f46                   kf46       = ^[[21;6~
  key_f47                   kf47       = ^[[23;6~
  key_f48                   kf48       = ^[[24;6~
  key_f49                   kf49       = ^[[1;3P
  key_f50                   kf50       = ^[[1;3Q
  key_f51                   kf51       = ^[[1;3R
  key_f52                   kf52       = ^[[1;3S
  key_f53                   kf53       = ^[[15;3~
  key_f54                   kf54       = ^[[17;3~
  key_f55                   kf55       = ^[[18;3~
  key_f56                   kf56       = ^[[19;3~
  key_f57                   kf57       = ^[[20;3~
  key_f58                   kf58       = ^[[21;3~
  key_f59                   kf59       = ^[[23;3~
  key_f60                   kf60       = ^[[24;3~
  key_f61                   kf61       = ^[[1;4P
  key_f62                   kf62       = ^[[1;4Q
  key_f63                   kf63       = ^[[1;4R
  clr_bol                   el1        = ^[[1K
  clear_margins             mgc        = ^[[?69l
  user6                     u6         = ^[[%i%d;%dR
  user7                     u7         = ^[[6n
  user8                     u8         = ^[[?%[;0123456789]c
  user9                     u9         = ^[[c
  orig_pair                 op         = ^[[39;49m
  orig_colors               oc         = ^[]104^G
  initialize_color          initc      = ^[]4;%p1%d;rgb:%p2%{255}%*%{1000}%/%2.2X/%p3%{255}%*%{1000}%/%2.2X/%p4%{255}%*%{1000}%/%2.2X^[\
  enter_italics_mode        sitm       = ^[[3m
  exit_italics_mode         ritm       = ^[[23m
  key_mouse                 kmous      = ^[[<
  set_a_foreground          setaf      = ^[[%?%p1%{8}%<%t3%p1%d%e%p1%{16}%<%t9%p1%{8}%-%d%e38;5;%p1%d%;m
  set_a_background          setab      = ^[[%?%p1%{8}%<%t4%p1%d%e%p1%{16}%<%t10%p1%{8}%-%d%e48;5;%p1%d%;m
  set_tb_margin             smgtb      = ^[[%i%p1%d;%p2%dr
  memory_lock               meml       = ^[l
  memory_unlock             memu       = ^[m
Extended boolean capabilities:
  AX                        = true
  XT                        = true
Extended string capabilities:
  Cr                        = ^[]112^G
  Cs                        = ^[]12;%p1%s^G
  E3                        = ^[[3J
  Ms                        = ^[]52;%p1%s;%p2%s^G
  Se                        = ^[[2 q
  Ss                        = ^[[%p1%d q
  XM                        = ^[[?1006;1000%?%p1%{1}%=%th%el%;
  kDC3                      = ^[[3;3~
  kDC4                      = ^[[3;4~
  kDC5                      = ^[[3;5~
  kDC6                      = ^[[3;6~
  kDC7                      = ^[[3;7~
  kDN                       = ^[[1;2B
  kDN3                      = ^[[1;3B
  kDN4                      = ^[[1;4B
  kDN5                      = ^[[1;5B
  kDN6                      = ^[[1;6B
  kDN7                      = ^[[1;7B
  kEND3                     = ^[[1;3F
  kEND4                     = ^[[1;4F
  kEND5                     = ^[[1;5F
  kEND6                     = ^[[1;6F
  kEND7                     = ^[[1;7F
  kHOM3                     = ^[[1;3H
  kHOM4                     = ^[[1;4H
  kHOM5                     = ^[[1;5H
  kHOM6                     = ^[[1;6H
  kHOM7                     = ^[[1;7H
  kIC3                      = ^[[2;3~
  kIC4                      = ^[[2;4~
  kIC5                      = ^[[2;5~
  kIC6                      = ^[[2;6~
  kIC7                      = ^[[2;7~
  kLFT3                     = ^[[1;3D
  kLFT4                     = ^[[1;4D
  kLFT5                     = ^[[1;5D
  kLFT6                     = ^[[1;6D
  kLFT7                     = ^[[1;7D
  kNXT3                     = ^[[6;3~
  kNXT4                     = ^[[6;4~
  kNXT5                     = ^[[6;5~
  kNXT6                     = ^[[6;6~
  kNXT7                     = ^[[6;7~
  kPRV3                     = ^[[5;3~
  kPRV4                     = ^[[5;4~
  kPRV5                     = ^[[5;5~
  kPRV6                     = ^[[5;6~
  kPRV7                     = ^[[5;7~
  kRIT3                     = ^[[1;3C
  kRIT4                     = ^[[1;4C
  kRIT5                     = ^[[1;5C
  kRIT6                     = ^[[1;6C
  kRIT7                     = ^[[1;7C
  kUP                       = ^[[1;2A
  kUP3                      = ^[[1;3A
  kUP4                      = ^[[1;4A
  kUP5                      = ^[[1;5A
  kUP6                      = ^[[1;6A
  kUP7                      = ^[[1;7A
  ka2                       = ^[Ox
  kb1                       = ^[Ot
  kb3                       = ^[Ov
  kc2                       = ^[Or
  kp5                       = ^[OE
  kpADD                     = ^[Ok
  kpCMA                     = ^[Ol
  kpDIV                     = ^[Oo
  kpDOT                     = ^[On
  kpMUL                     = ^[Oj
  kpSUB                     = ^[Om
  kpZRO                     = ^[Op
  rmxx                      = ^[[29m
  smxx                      = ^[[9m
  xm                        = ^[[<%i%p3%d;%p1%d;%p2%d;%?%p4%tM%em%;
  ext.resize_screen         = ^[[8;%p1%d;%p2%dt
  ext.reset_scroll_region   = ^[[r
  ext.enter_altfont_mode    = ^[[11m
  setrgbf                   = ^[[38;2;%p1%d;%p2%d;%p3%dm
  setrgbb                   = ^[[48;2;%p1%d;%p2%d;%p3%dm
  ext.save_title            = ^[[22;0t
  ext.restore_title         = ^[[23;0t
  ext.set_title             = ^[]0;%p2%s^G
  ext.enable_lr_margin      = ^[[?69h
  ext.disable_lr_margin     = ^[[?69l
  ext.enable_bpaste         = ^[[?2004h
  ext.disable_bpaste        = ^[[?2004l
  ext.enable_focus          = ^[[?1004h
  ext.disable_focus         = ^[[?1004l
  ext.enable_mouse          = ^[[?1002h^[[?1006h
  ext.disable_mouse         = ^[[?1002l^[[?1006l
  ext.enable_mouse_move     = ^[[?1003h
  ext.disable_mouse_move    = ^[[?1003l
}}}


Executing: 
Executing CursorMoved Autocommands for "*"
autocommand call s:Highlight_Matching_Pair()

Executing: call s:Highlight_Matching_Pair()
calling <SNR>19_Highlight_Matching_Pair()

line 1:   if !exists("w:matchparen_ids")
line 2:     let w:matchparen_ids = []
line 3:   endif
line 4:   " Remove any previous match.
line 5:   call s:Remove_Matches()
calling <SNR>19_Remove_Matches()

line 1:   if exists('w:paren_hl_on') && w:paren_hl_on
line 2:     while !empty(w:matchparen_ids)
line 3:       silent! call remove(w:matchparen_ids, 0)->matchdelete()
line 4:     endwhile
line 5:     let w:paren_hl_on = 0
line 6:   endif
<SNR>19_Remove_Matches returning #0

continuing in <SNR>19_Highlight_Matching_Pair

line 6: 
line 7:   " Avoid that we remove the popup menu.
line 8:   " Return when there are no colors (looks like the cursor jumps).
line 9:   if pumvisible() || (&t_Co < 8 && !has("gui_running"))
line 10:     return
line 11:   endif
line 12: 
line 13:   " Get the character under the cursor and check if it's in 'matchpairs'.
line 14:   let c_lnum = line('.')
line 15:   let c_col = col('.')
line 16:   let before = 0
line 17: 
line 18:   let text = getline(c_lnum)
line 19:   let c_before = text->strpart(0, c_col - 1)->slice(-1)
line 20:   let c = text->strpart(c_col - 1)->slice(0, 1)
line 21:   let plist = split(&matchpairs, '.\zs[:,]')
line 22:   let i = index(plist, c)
line 23:   if i < 0
line 24:     " not found, in Insert mode try character before the cursor
line 25:     if c_col > 1 && (mode() == 'i' || mode() == 'R')
line 26:       let before = strlen(c_before)
line 27:       let c = c_before
line 28:       let i = index(plist, c)
line 29:     endif
line 30:     if i < 0
line 31:       " not found, nothing to do
line 32:       return
<SNR>19_Highlight_Matching_Pair returning #0

continuing in CursorMoved Autocommands for "*"

Executing WinScrolled Autocommands for "*"
autocommand call s:Highlight_Matching_Pair()

Executing: call s:Highlight_Matching_Pair()
calling <SNR>19_Highlight_Matching_Pair()

line 1:   if !exists("w:matchparen_ids")
line 2:     let w:matchparen_ids = []
line 3:   endif
line 4:   " Remove any previous match.
line 5:   call s:Remove_Matches()
calling <SNR>19_Remove_Matches()

line 1:   if exists('w:paren_hl_on') && w:paren_hl_on
line 2:     while !empty(w:matchparen_ids)
line 3:       silent! call remove(w:matchparen_ids, 0)->matchdelete()
line 4:     endwhile
line 5:     let w:paren_hl_on = 0
line 6:   endif
<SNR>19_Remove_Matches returning #0

continuing in <SNR>19_Highlight_Matching_Pair

line 6: 
line 7:   " Avoid that we remove the popup menu.
line 8:   " Return when there are no colors (looks like the cursor jumps).
line 9:   if pumvisible() || (&t_Co < 8 && !has("gui_running"))
line 10:     return
line 11:   endif
line 12: 
line 13:   " Get the character under the cursor and check if it's in 'matchpairs'.
line 14:   let c_lnum = line('.')
line 15:   let c_col = col('.')
line 16:   let before = 0
line 17: 
line 18:   let text = getline(c_lnum)
line 19:   let c_before = text->strpart(0, c_col - 1)->slice(-1)
line 20:   let c = text->strpart(c_col - 1)->slice(0, 1)
line 21:   let plist = split(&matchpairs, '.\zs[:,]')
line 22:   let i = index(plist, c)
line 23:   if i < 0
line 24:     " not found, in Insert mode try character before the cursor
line 25:     if c_col > 1 && (mode() == 'i' || mode() == 'R')
line 26:       let before = strlen(c_before)
line 27:       let c = c_before
line 28:       let i = index(plist, c)
line 29:     endif
line 30:     if i < 0
line 31:       " not found, nothing to do
line 32:       return
<SNR>19_Highlight_Matching_Pair returning #0

continuing in WinScrolled Autocommands for "*"


Executing: q!
Executing BufLeave Autocommands for "*"
autocommand call s:Remove_Matches()

Executing: call s:Remove_Matches()
calling <SNR>19_Remove_Matches()

line 1:   if exists('w:paren_hl_on') && w:paren_hl_on
line 2:     while !empty(w:matchparen_ids)
line 3:       silent! call remove(w:matchparen_ids, 0)->matchdelete()
line 4:     endwhile
line 5:     let w:paren_hl_on = 0
line 6:   endif
<SNR>19_Remove_Matches returning #0

continuing in BufLeave Autocommands for "*"

Executing BufLeave Autocommands for "*"
autocommand if &ft != "netrw"|let w:netrw_prvfile= expand("%:p")|endif

Executing: if &ft != "netrw"|let w:netrw_prvfile= expand("%:p")|endif
Executing: let w:netrw_prvfile= expand("%:p")|endif
Executing: endif
Executing WinLeave Autocommands for "*"
autocommand call s:Remove_Matches()

Executing: call s:Remove_Matches()
calling <SNR>19_Remove_Matches()

line 1:   if exists('w:paren_hl_on') && w:paren_hl_on
line 2:     while !empty(w:matchparen_ids)
line 3:       silent! call remove(w:matchparen_ids, 0)->matchdelete()
line 4:     endwhile
line 5:     let w:paren_hl_on = 0
line 6:   endif
<SNR>19_Remove_Matches returning #0

continuing in WinLeave Autocommands for "*"

Executing WinEnter Autocommands for "*"
autocommand call s:Highlight_Matching_Pair()

Executing: call s:Highlight_Matching_Pair()
calling <SNR>19_Highlight_Matching_Pair()

line 1:   if !exists("w:matchparen_ids")
line 2:     let w:matchparen_ids = []
line 3:   endif
line 4:   " Remove any previous match.
line 5:   call s:Remove_Matches()
calling <SNR>19_Remove_Matches()

line 1:   if exists('w:paren_hl_on') && w:paren_hl_on
line 2:     while !empty(w:matchparen_ids)
line 3:       silent! call remove(w:matchparen_ids, 0)->matchdelete()
line 4:     endwhile
line 5:     let w:paren_hl_on = 0
line 6:   endif
<SNR>19_Remove_Matches returning #0

continuing in <SNR>19_Highlight_Matching_Pair

line 6: 
line 7:   " Avoid that we remove the popup menu.
line 8:   " Return when there are no colors (looks like the cursor jumps).
line 9:   if pumvisible() || (&t_Co < 8 && !has("gui_running"))
line 10:     return
line 11:   endif
line 12: 
line 13:   " Get the character under the cursor and check if it's in 'matchpairs'.
line 14:   let c_lnum = line('.')
line 15:   let c_col = col('.')
line 16:   let before = 0
line 17: 
line 18:   let text = getline(c_lnum)
line 19:   let c_before = text->strpart(0, c_col - 1)->slice(-1)
line 20:   let c = text->strpart(c_col - 1)->slice(0, 1)
line 21:   let plist = split(&matchpairs, '.\zs[:,]')
line 22:   let i = index(plist, c)
line 23:   if i < 0
line 24:     " not found, in Insert mode try character before the cursor
line 25:     if c_col > 1 && (mode() == 'i' || mode() == 'R')
line 26:       let before = strlen(c_before)
line 27:       let c = c_before
line 28:       let i = index(plist, c)
line 29:     endif
line 30:     if i < 0
line 31:       " not found, nothing to do
line 32:       return
<SNR>19_Highlight_Matching_Pair returning #0

continuing in WinEnter Autocommands for "*"

Executing BufEnter Autocommands for "*"
autocommand sil call s:LocalBrowse(expand("<amatch>"))

Executing: sil call s:LocalBrowse(expand("<amatch>"))
calling <SNR>20_LocalBrowse('/home/server01/.config/nvim/init.lua')

line 1:   " Unfortunate interaction -- only DechoMsg debugging calls can be safely used here.
line 2:   " Otherwise, the BufEnter event gets triggered when attempts to write to
line 3:   " the DBG buffer are made.
line 4: 
line 5:   if !exists("s:vimentered")
line 6:    " If s:vimentered doesn't exist, then the VimEnter event hasn't fired.  It will,
line 7:    " and so s:VimEnter() will then be calling this routine, but this time with s:vimentered defined.
line 8: "   call Dfunc("s:LocalBrowse(dirname<".a:dirname.">)  (s:vimentered doesn't exist)")
line 9: "   call Dret("s:LocalBrowse")
line 10:    return
line 11:   endif
line 12: 
line 13: "  call Dfunc("s:LocalBrowse(dirname<".a:dirname.">)  (s:vimentered=".s:vimentered.")")
line 14: 
line 15:   if has("amiga")
line 16:    " The check against '' is made for the Amiga, where the empty
line 17:    " string is the current directory and not checking would break
line 18:    " things such as the help command.
line 19: "   call Decho("(LocalBrowse) dirname<".a:dirname.">  (isdirectory, amiga)")
line 20:    if a:dirname != '' && isdirectory(a:dirname)
line 21:     sil! call netrw#LocalBrowseCheck(a:dirname)
line 22:     if exists("w:netrw_bannercnt") && line('.') < w:netrw_bannercnt
line 23:      exe w:netrw_bannercnt
line 24:     endif
line 25:    endif
line 26: 
line 27:   elseif isdirectory(a:dirname)
line 28: "   call Decho("(LocalBrowse) dirname<".a:dirname."> ft=".&ft."  (isdirectory, not amiga)")
line 29: "   call Dredir("LocalBrowse ft last set: ","verbose set ft")
line 30:    " Jul 13, 2021: for whatever reason, preceding the following call with
line 31:    " a   sil!  causes an unbalanced if-endif vim error
line 32:    call netrw#LocalBrowseCheck(a:dirname)
line 33:    if exists("w:netrw_bannercnt") && line('.') < w:netrw_bannercnt
line 34:     exe w:netrw_bannercnt
line 35:    endif
line 36: 
line 37:   else
line 38:    " not a directory, ignore it
line 39: "   call Decho("(LocalBrowse) dirname<".a:dirname."> not a directory, ignoring...")
line 40:   endif
line 41: 
line 42: "  call Dret("s:LocalBrowse")
<SNR>20_LocalBrowse returning #0

continuing in BufEnter Autocommands for "*"


Executing CursorMoved Autocommands for "*"
autocommand call s:Highlight_Matching_Pair()

Executing: call s:Highlight_Matching_Pair()
calling <SNR>19_Highlight_Matching_Pair()

line 1:   if !exists("w:matchparen_ids")
line 2:     let w:matchparen_ids = []
line 3:   endif
line 4:   " Remove any previous match.
line 5:   call s:Remove_Matches()
calling <SNR>19_Remove_Matches()

line 1:   if exists('w:paren_hl_on') && w:paren_hl_on
line 2:     while !empty(w:matchparen_ids)
line 3:       silent! call remove(w:matchparen_ids, 0)->matchdelete()
line 4:     endwhile
line 5:     let w:paren_hl_on = 0
line 6:   endif
<SNR>19_Remove_Matches returning #0

continuing in <SNR>19_Highlight_Matching_Pair

line 6: 
line 7:   " Avoid that we remove the popup menu.
line 8:   " Return when there are no colors (looks like the cursor jumps).
line 9:   if pumvisible() || (&t_Co < 8 && !has("gui_running"))
line 10:     return
line 11:   endif
line 12: 
line 13:   " Get the character under the cursor and check if it's in 'matchpairs'.
line 14:   let c_lnum = line('.')
line 15:   let c_col = col('.')
line 16:   let before = 0
line 17: 
line 18:   let text = getline(c_lnum)
line 19:   let c_before = text->strpart(0, c_col - 1)->slice(-1)
line 20:   let c = text->strpart(c_col - 1)->slice(0, 1)
line 21:   let plist = split(&matchpairs, '.\zs[:,]')
line 22:   let i = index(plist, c)
line 23:   if i < 0
line 24:     " not found, in Insert mode try character before the cursor
line 25:     if c_col > 1 && (mode() == 'i' || mode() == 'R')
line 26:       let before = strlen(c_before)
line 27:       let c = c_before
line 28:       let i = index(plist, c)
line 29:     endif
line 30:     if i < 0
line 31:       " not found, nothing to do
line 32:       return
<SNR>19_Highlight_Matching_Pair returning #0

continuing in CursorMoved Autocommands for "*"

Executing WinScrolled Autocommands for "*"
autocommand call s:Highlight_Matching_Pair()

Executing: call s:Highlight_Matching_Pair()
calling <SNR>19_Highlight_Matching_Pair()

line 1:   if !exists("w:matchparen_ids")
line 2:     let w:matchparen_ids = []
line 3:   endif
line 4:   " Remove any previous match.
line 5:   call s:Remove_Matches()
calling <SNR>19_Remove_Matches()

line 1:   if exists('w:paren_hl_on') && w:paren_hl_on
line 2:     while !empty(w:matchparen_ids)
line 3:       silent! call remove(w:matchparen_ids, 0)->matchdelete()
line 4:     endwhile
line 5:     let w:paren_hl_on = 0
line 6:   endif
<SNR>19_Remove_Matches returning #0

continuing in <SNR>19_Highlight_Matching_Pair

line 6: 
line 7:   " Avoid that we remove the popup menu.
line 8:   " Return when there are no colors (looks like the cursor jumps).
line 9:   if pumvisible() || (&t_Co < 8 && !has("gui_running"))
line 10:     return
line 11:   endif
line 12: 
line 13:   " Get the character under the cursor and check if it's in 'matchpairs'.
line 14:   let c_lnum = line('.')
line 15:   let c_col = col('.')
line 16:   let before = 0
line 17: 
line 18:   let text = getline(c_lnum)
line 19:   let c_before = text->strpart(0, c_col - 1)->slice(-1)
line 20:   let c = text->strpart(c_col - 1)->slice(0, 1)
line 21:   let plist = split(&matchpairs, '.\zs[:,]')
line 22:   let i = index(plist, c)
line 23:   if i < 0
line 24:     " not found, in Insert mode try character before the cursor
line 25:     if c_col > 1 && (mode() == 'i' || mode() == 'R')
line 26:       let before = strlen(c_before)
line 27:       let c = c_before
line 28:       let i = index(plist, c)
line 29:     endif
line 30:     if i < 0
line 31:       " not found, nothing to do
line 32:       return
<SNR>19_Highlight_Matching_Pair returning #0

continuing in WinScrolled Autocommands for "*"


Executing: q!
Executing VimLeavePre Autocommands for "*"
autocommand <Lua 50: ~/.local/share/nvim/lazy/mason.nvim/lua/mason/init.lua:9>

Executing: 
autocommand <Lua 37: /opt/nvim-linux-x86_64/share/nvim/runtime/lua/vim/lsp.lua:797>

Executing: 
Writing ShaDa file "/home/server01/.local/state/nvim/shada/main.shada"
Executing:     vnoremenu PopUp.Cut                     "+x
Executing:     vnoremenu PopUp.Copy                    "+y
Executing:     anoremenu PopUp.Paste                   "+gP
Executing:     vnoremenu PopUp.Paste                   "+P
Executing:     vnoremenu PopUp.Delete                  "_x
Executing:     nnoremenu PopUp.Select\ All             ggVG
Executing:     vnoremenu PopUp.Select\ All             gg0oG$
Executing:     inoremenu PopUp.Select\ All             <C-Home><C-O>VG
Executing:     anoremenu PopUp.Inspect                 <Cmd>Inspect<CR>
Executing:     anoremenu PopUp.-1-                     <Nop>
Executing:     anoremenu PopUp.How-to\ disable\ mouse  <Cmd>help disable-mouse<CR>
Executing:   
Searching for "ftplugin.vim" in runtime path
Searching for "/home/server01/.config/nvim/ftplugin.vim"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin.vim"
sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin.vim"
line 1: " Vim support file to switch on loading plugins for file types
line 2: "
line 3: " Maintainer:^IThe Vim Project <https://github.com/vim/vim>
line 4: " Last change:^I2023 Aug 10
line 5: " Former Maintainer:^IBram Moolenaar <Bram@vim.org>
line 6: 
line 7: if exists("did_load_ftplugin")
line 8:   finish
line 9: endif
line 10: let did_load_ftplugin = 1
line 11: 
line 12: augroup filetypeplugin
line 13:   au FileType * call s:LoadFTPlugin()
line 14: 
line 15:   func! s:LoadFTPlugin()
line 39: augroup END
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin.vim
Searching for "/opt/nvim-linux-x86_64/lib/nvim/ftplugin.vim"
Searching for "indent.vim" in runtime path
Searching for "/home/server01/.config/nvim/indent.vim"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/indent.vim"
sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/indent.vim"
line 1: " Vim support file to switch on loading indent files for file types
line 2: "
line 3: " Maintainer:^IThe Vim Project <https://github.com/vim/vim>
line 4: " Last Change:^I2023 Aug 10
line 5: " Former Maintainer:^IBram Moolenaar <Bram@vim.org>
line 6: 
line 7: if exists("did_indent_on")
line 8:   finish
line 9: endif
line 10: let did_indent_on = 1
line 11: 
line 12: augroup filetypeindent
line 13:   au FileType * call s:LoadIndent()
line 14:   func! s:LoadIndent()
line 33: augroup END
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/indent.vim
Searching for "/opt/nvim-linux-x86_64/lib/nvim/indent.vim"
could not source "/etc/xdg/nvim/sysinit.vim"
could not source "$VIM/sysinit.vim"
sourcing "/home/server01/.config/nvim/init.lua"
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/filetype.lua
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/filetype.lua"
Executing:   augroup filetypedetect
Executing:   runtime! ftdetect/*.{vim,lua}
Searching for "ftdetect/*.{vim,lua}" in runtime path
Searching for "/home/server01/.config/nvim/ftdetect/*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/ftdetect/*.{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/ftdetect/*.{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/ftdetect/*.{vim,lua}"
Searching for "/home/server01/.local/state/nvim/lazy/readme/ftdetect/*.{vim,lua}"
not found in runtime path: "ftdetect/*.{vim,lua}"
Executing:   augroup END
Executing:   
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/filetype.lua
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: augroup filetypedetect
Executing: augroup END
Executing: augroup filetypedetect
Executing: augroup END
Executing: augroup filetypedetect
Executing: augroup END
Executing: source /home/server01/.local/share/nvim/lazy/nvim-lspconfig/plugin/lspconfig.lua
line 0: sourcing "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/plugin/lspconfig.lua"
finished sourcing /home/server01/.local/share/nvim/lazy/nvim-lspconfig/plugin/lspconfig.lua
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: augroup filetypedetect
Executing: augroup END
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/editorconfig.lua
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/editorconfig.lua"
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/editorconfig.lua
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/gzip.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/gzip.vim"
line 1: " Vim plugin for editing compressed files.
line 2: " Maintainer:^IThe Vim Project <https://github.com/vim/vim>
line 3: " Last Change:^I2023 Aug 10
line 4: " Former Maintainer:^IBram Moolenaar <Bram@vim.org>
line 5: 
line 6: " Exit quickly when:
line 7: " - this plugin was already loaded
line 8: " - when 'compatible' is set
line 9: " - some autocommands are already taking care of compressed files
line 10: if exists("loaded_gzip") || &cp || exists("#BufReadPre#*.gz")
line 11:   finish
line 12: endif
line 13: let loaded_gzip = 1
line 14: 
line 15: augroup gzip
line 16:   " Remove all gzip autocommands
line 17:   au!
line 18: 
line 19:   " Enable editing of gzipped files.
line 20:   " The functions are defined in autoload/gzip.vim.
line 21:   "
line 22:   " Set binary mode before reading the file.
line 23:   " Use "gzip -d", gunzip isn't always available.
line 24:   autocmd BufReadPre,FileReadPre^I*.gz,*.bz2,*.Z,*.lzma,*.xz,*.lz,*.zst,*.br,*.lzo setlocal bin
line 25:   autocmd BufReadPost,FileReadPost^I*.gz  call gzip#read("gzip -dn")
line 26:   autocmd BufReadPost,FileReadPost^I*.bz2 call gzip#read("bzip2 -d")
line 27:   autocmd BufReadPost,FileReadPost^I*.Z   call gzip#read("uncompress")
line 28:   autocmd BufReadPost,FileReadPost^I*.lzma call gzip#read("lzma -d")
line 29:   autocmd BufReadPost,FileReadPost^I*.xz  call gzip#read("xz -d")
line 30:   autocmd BufReadPost,FileReadPost^I*.lz  call gzip#read("lzip -d")
line 31:   autocmd BufReadPost,FileReadPost^I*.zst call gzip#read("zstd -d --rm")
line 32:   autocmd BufReadPost,FileReadPost^I*.br call gzip#read("brotli -d --rm")
line 33:   autocmd BufReadPost,FileReadPost^I*.lzo call gzip#read("lzop -d -U")
line 34:   autocmd BufWritePost,FileWritePost^I*.gz  call gzip#write("gzip")
line 35:   autocmd BufWritePost,FileWritePost^I*.bz2 call gzip#write("bzip2")
line 36:   autocmd BufWritePost,FileWritePost^I*.Z   call gzip#write("compress -f")
line 37:   autocmd BufWritePost,FileWritePost^I*.lzma call gzip#write("lzma -z")
line 38:   autocmd BufWritePost,FileWritePost^I*.xz  call gzip#write("xz -z")
line 39:   autocmd BufWritePost,FileWritePost^I*.lz  call gzip#write("lzip")
line 40:   autocmd BufWritePost,FileWritePost^I*.zst  call gzip#write("zstd --rm")
line 41:   autocmd BufWritePost,FileWritePost^I*.br  call gzip#write("brotli --rm")
line 42:   autocmd BufWritePost,FileWritePost^I*.lzo  call gzip#write("lzop -U")
line 43:   autocmd FileAppendPre^I^I^I*.gz  call gzip#appre("gzip -dn")
line 44:   autocmd FileAppendPre^I^I^I*.bz2 call gzip#appre("bzip2 -d")
line 45:   autocmd FileAppendPre^I^I^I*.Z   call gzip#appre("uncompress")
line 46:   autocmd FileAppendPre^I^I^I*.lzma call gzip#appre("lzma -d")
line 47:   autocmd FileAppendPre^I^I^I*.xz   call gzip#appre("xz -d")
line 48:   autocmd FileAppendPre^I^I^I*.lz   call gzip#appre("lzip -d")
line 49:   autocmd FileAppendPre^I^I^I*.zst call gzip#appre("zstd -d --rm")
line 50:   autocmd FileAppendPre^I^I^I*.br call gzip#appre("brotli -d --rm")
line 51:   autocmd FileAppendPre^I^I^I*.lzo call gzip#appre("lzop -d -U")
line 52:   autocmd FileAppendPost^I^I*.gz  call gzip#write("gzip")
line 53:   autocmd FileAppendPost^I^I*.bz2 call gzip#write("bzip2")
line 54:   autocmd FileAppendPost^I^I*.Z   call gzip#write("compress -f")
line 55:   autocmd FileAppendPost^I^I*.lzma call gzip#write("lzma -z")
line 56:   autocmd FileAppendPost^I^I*.xz call gzip#write("xz -z")
line 57:   autocmd FileAppendPost^I^I*.lz call gzip#write("lzip")
line 58:   autocmd FileAppendPost^I^I*.zst call gzip#write("zstd --rm")
line 59:   autocmd FileAppendPost^I^I*.br call gzip#write("brotli --rm")
line 60:   autocmd FileAppendPost^I^I*.lzo call gzip#write("lzop -U")
line 61: augroup END
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/gzip.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/man.lua
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/man.lua"
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/man.lua
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/matchit.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/matchit.vim"
line 1: " Nvim: load the matchit plugin by default.
line 2: if !exists("g:loaded_matchit") && stridx(&packpath, $VIMRUNTIME) >= 0
line 3:   packadd matchit
Searching for "pack/*/start/matchit" in "/opt/nvim-linux-x86_64/share/nvim/runtime"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/*/start/matchit"
not found in 'packpath': "pack/*/start/matchit"
Searching for "pack/*/opt/matchit" in "/opt/nvim-linux-x86_64/share/nvim/runtime"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/*/opt/matchit"
line 3: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim"
line 1: "  matchit.vim: (global plugin) Extended "%" matching
line 2: "  Maintainer:  Christian Brabandt
line 3: "  Version:     1.19
line 4: "  Last Change: 2023, June 28th
line 5: "  Repository:  https://github.com/chrisbra/matchit
line 6: "  Previous URL:http://www.vim.org/script.php?script_id=39
line 7: "  Previous Maintainer:  Benji Fisher PhD   <benji@member.AMS.org>
line 8: 
line 9: " Documentation:
line 10: "  The documentation is in a separate file: ../doc/matchit.txt
line 11: 
line 12: " Credits:
line 13: "  Vim editor by Bram Moolenaar (Thanks, Bram!)
line 14: "  Original script and design by Raul Segura Acevedo
line 15: "  Support for comments by Douglas Potts
line 16: "  Support for back references and other improvements by Benji Fisher
line 17: "  Support for many languages by Johannes Zellner
line 18: "  Suggestions for improvement, bug reports, and support for additional
line 19: "  languages by Jordi-Albert Batalla, Neil Bird, Servatius Brandt, Mark
line 20: "  Collett, Stephen Wall, Dany St-Amant, Yuheng Xie, and Johannes Zellner.
line 21: 
line 22: " Debugging:
line 23: "  If you'd like to try the built-in debugging commands...
line 24: "   :MatchDebug      to activate debugging for the current buffer
line 25: "  This saves the values of several key script variables as buffer-local
line 26: "  variables.  See the MatchDebug() function, below, for details.
line 27: 
line 28: " TODO:  I should think about multi-line patterns for b:match_words.
line 29: "   This would require an option:  how many lines to scan (default 1).
line 30: "   This would be useful for Python, maybe also for *ML.
line 31: " TODO:  Maybe I should add a menu so that people will actually use some of
line 32: "   the features that I have implemented.
line 33: " TODO:  Eliminate the MultiMatch function.  Add yet another argument to
line 34: "   Match_wrapper() instead.
line 35: " TODO:  Allow :let b:match_words = '\(\(foo\)\(bar\)\):\3\2:end\1'
line 36: " TODO:  Make backrefs safer by using '\V' (very no-magic).
line 37: " TODO:  Add a level of indirection, so that custom % scripts can use my
line 38: "   work but extend it.
line 39: 
line 40: " Allow user to prevent loading and prevent duplicate loading.
line 41: if exists("g:loaded_matchit") || &cp
line 42:   finish
line 43: endif
line 44: let g:loaded_matchit = 1
line 45: 
line 46: let s:save_cpo = &cpo
line 47: set cpo&vim
line 48: 
line 49: fun MatchEnable()
line 89: 
line 90: fun MatchDisable()
line 108: 
line 109: " Call this function to turn on debugging information.  Every time the main
line 110: " script is run, buffer variables will be saved.  These can be used directly
line 111: " or viewed using the menu items below.
line 112: if !exists(":MatchDebug")
line 113:   command! -nargs=0 MatchDebug call matchit#Match_debug()
line 114: endif
line 115: if !exists(":MatchDisable")
line 116:   command! -nargs=0 MatchDisable :call MatchDisable()
line 117: endif
line 118: if !exists(":MatchEnable")
line 119:   command! -nargs=0 MatchEnable :call MatchEnable()
line 120: endif
line 121: 
line 122: call MatchEnable()
calling MatchEnable()

line 1:   nnoremap <silent> <Plug>(MatchitNormalForward)     :<C-U>call matchit#Match_wrapper('',1,'n')<CR>
line 2:   nnoremap <silent> <Plug>(MatchitNormalBackward)    :<C-U>call matchit#Match_wrapper('',0,'n')<CR>
line 3:   xnoremap <silent> <Plug>(MatchitVisualForward)     :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") \| exe ":normal! m'" \| endif<cr>gv``
line 5:   xnoremap <silent> <Plug>(MatchitVisualBackward)    :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv``
line 6:   onoremap <silent> <Plug>(MatchitOperationForward)  :<C-U>call matchit#Match_wrapper('',1,'o')<CR>
line 7:   onoremap <silent> <Plug>(MatchitOperationBackward) :<C-U>call matchit#Match_wrapper('',0,'o')<CR>
line 8: 
line 9:   " Analogues of [{ and ]} using matching patterns:
line 10:   nnoremap <silent> <Plug>(MatchitNormalMultiBackward)    :<C-U>call matchit#MultiMatch("bW", "n")<CR>
line 11:   nnoremap <silent> <Plug>(MatchitNormalMultiForward)     :<C-U>call matchit#MultiMatch("W",  "n")<CR>
line 12:   xnoremap <silent> <Plug>(MatchitVisualMultiBackward)    :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv``
line 13:   xnoremap <silent> <Plug>(MatchitVisualMultiForward)     :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv``
line 14:   onoremap <silent> <Plug>(MatchitOperationMultiBackward) :<C-U>call matchit#MultiMatch("bW", "o")<CR>
line 15:   onoremap <silent> <Plug>(MatchitOperationMultiForward)  :<C-U>call matchit#MultiMatch("W",  "o")<CR>
line 16: 
line 17:   " text object:
line 18:   xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
line 19: 
line 20:   if !exists("g:no_plugin_maps")
line 21:     nmap <silent> %  <Plug>(MatchitNormalForward)
line 22:     nmap <silent> g% <Plug>(MatchitNormalBackward)
line 23:     xmap <silent> %  <Plug>(MatchitVisualForward)
line 24:     xmap <silent> g% <Plug>(MatchitVisualBackward)
line 25:     omap <silent> %  <Plug>(MatchitOperationForward)
line 26:     omap <silent> g% <Plug>(MatchitOperationBackward)
line 27: 
line 28:     " Analogues of [{ and ]} using matching patterns:
line 29:     nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
line 30:     nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
line 31:     xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
line 32:     xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
line 33:     omap <silent> [% <Plug>(MatchitOperationMultiBackward)
line 34:     omap <silent> ]% <Plug>(MatchitOperationMultiForward)
line 35: 
line 36:     " Text object
line 37:     xmap a% <Plug>(MatchitVisualTextObject)
line 38:   endif
MatchEnable returning #0

continuing in /opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim

line 123: 
line 124: let &cpo = s:save_cpo
line 125: unlet s:save_cpo
line 126: 
line 127: " vim:sts=2:sw=2:et:
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
continuing in /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/matchit.vim
line 3: augroup filetypedetect
line 3: augroup END
line 4: endif
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/matchit.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/matchparen.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/matchparen.vim"
line 1: " Vim plugin for showing matching parens
line 2: " Maintainer:^IThe Vim Project <https://github.com/vim/vim>
line 3: " Last Change:^I2024 May 18
line 4: " Former Maintainer:^IBram Moolenaar <Bram@vim.org>
line 5: 
line 6: " Exit quickly when:
line 7: " - this plugin was already loaded (or disabled)
line 8: " - when 'compatible' is set
line 9: if exists("g:loaded_matchparen") || &cp
line 10:   finish
line 11: endif
line 12: let g:loaded_matchparen = 1
line 13: 
line 14: if !exists("g:matchparen_timeout")
line 15:   let g:matchparen_timeout = 300
line 16: endif
line 17: if !exists("g:matchparen_insert_timeout")
line 18:   let g:matchparen_insert_timeout = 60
line 19: endif
line 20: 
line 21: let s:has_matchaddpos = exists('*matchaddpos')
line 22: 
line 23: augroup matchparen
line 24:   " Replace all matchparen autocommands
line 25:   autocmd! CursorMoved,CursorMovedI,WinEnter,WinScrolled * call s:Highlight_Matching_Pair()
line 26:   autocmd! BufWinEnter * autocmd SafeState * ++once call s:Highlight_Matching_Pair()
line 27:   autocmd! WinLeave,BufLeave * call s:Remove_Matches()
line 28:   if exists('##TextChanged')
line 29:     autocmd! TextChanged,TextChangedI * call s:Highlight_Matching_Pair()
line 30:     autocmd! TextChangedP * call s:Remove_Matches()
line 31:   endif
line 32: augroup END
line 33: 
line 34: " Skip the rest if it was already done.
line 35: if exists("*s:Highlight_Matching_Pair")
line 36:   finish
line 37: endif
line 38: 
line 39: let s:cpo_save = &cpo
line 40: set cpo-=C
line 41: 
line 42: " The function that is invoked (very often) to define a ":match" highlighting
line 43: " for any matching paren.
line 44: func s:Highlight_Matching_Pair()
line 205: 
line 206: func s:Remove_Matches()
line 214: 
line 215: " Define commands that will disable and enable the plugin.
line 216: command DoMatchParen call s:DoMatchParen()
line 217: command NoMatchParen call s:NoMatchParen()
line 218: 
line 219: func s:NoMatchParen()
line 226: 
line 227: func s:DoMatchParen()
line 233: 
line 234: let &cpo = s:cpo_save
line 235: unlet s:cpo_save
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/matchparen.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/netrwPlugin.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/netrwPlugin.vim"
line 1: " netrwPlugin.vim: Handles file transfer and remote directory listing across a network
line 2: "            PLUGIN SECTION
line 3: " Maintainer:^IThis runtime file is looking for a new maintainer.
line 4: " Date:^I^IFeb 09, 2021
line 5: " Last Change:
line 6: "   2024 May 08 by Vim Project: cleanup legacy Win9X checks
line 7: " Former Maintainer:   Charles E Campbell
line 8: " GetLatestVimScripts: 1075 1 :AutoInstall: netrw.vim
line 9: " Copyright:    Copyright (C) 1999-2021 Charles E. Campbell {{{1
line 10: "               Permission is hereby granted to use and distribute this code,
line 11: "               with or without modifications, provided that this copyright
line 12: "               notice is copied with it. Like anything else that's free,
line 13: "               netrw.vim, netrwPlugin.vim, and netrwSettings.vim are provided
line 14: "               *as is* and comes with no warranty of any kind, either
line 15: "               expressed or implied. By using this plugin, you agree that
line 16: "               in no event will the copyright holder be liable for any damages
line 17: "               resulting from the use of this software.
line 18: "
line 19: "  But be doers of the Word, and not only hearers, deluding your own selves {{{1
line 20: "  (James 1:22 RSV)
line 21: " =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
line 22: " Load Once: {{{1
line 23: if &cp || exists("g:loaded_netrwPlugin")
line 24:  finish
line 25: endif
line 26: let g:loaded_netrwPlugin = "v173"
line 27: let s:keepcpo = &cpo
line 28: set cpo&vim
line 29: "DechoRemOn
line 30: 
line 31: " ---------------------------------------------------------------------
line 32: " Public Interface: {{{1
line 33: 
line 34: " Local Browsing Autocmds: {{{2
line 35: augroup FileExplorer
line 36:  au!
line 37:  au BufLeave *  if &ft != "netrw"|let w:netrw_prvfile= expand("%:p")|endif
line 38:  au BufEnter *^Isil call s:LocalBrowse(expand("<amatch>"))
line 39:  au VimEnter *^Isil call s:VimEnter(expand("<amatch>"))
line 40:  if has("win32")
line 41:   au BufEnter .* sil call s:LocalBrowse(expand("<amatch>"))
line 42:  endif
line 43: augroup END
line 44: 
line 45: " Network Browsing Reading Writing: {{{2
line 46: augroup Network
line 47:  au!
line 48:  au BufReadCmd   file://*^I^I^I^I^I^I^I^I^I^I^Icall netrw#FileUrlEdit(expand("<amatch>"))
line 49:  au BufReadCmd   ftp://*,rcp://*,scp://*,http://*,https://*,dav://*,davs://*,rsync://*,sftp://*^Iexe "sil doau BufReadPre ".fnameescape(expand("<amatch>"))|call netrw#Nread(2,expand("<amatch>"))|exe "sil doau BufReadPost ".fnameescape(expand("<amatch>"))
line 50:  au FileReadCmd  ftp://*,rcp://*,scp://*,http://*,file://*,https://*,dav://*,davs://*,rsync://*,sftp://*^Iexe "sil doau FileReadPre ".fnameescape(expand("<amatch>"))|call netrw#Nread(1,expand("<amatch>"))|exe "sil doau FileReadPost ".fnameescape(expand("<amatch>"))
line 51:  au BufWriteCmd  ftp://*,rcp://*,scp://*,http://*,file://*,dav://*,davs://*,rsync://*,sftp://*^I^I^Iexe "sil doau BufWritePre ".fnameescape(expand("<amatch>"))|exe 'Nwrite '.fnameescape(expand("<amatch>"))|exe "sil doau BufWritePost ".fnameescape(expand("<amatch>"))
line 52:  au FileWriteCmd ftp://*,rcp://*,scp://*,http://*,file://*,dav://*,davs://*,rsync://*,sftp://*^I^I^Iexe "sil doau FileWritePre ".fnameescape(expand("<amatch>"))|exe "'[,']".'Nwrite '.fnameescape(expand("<amatch>"))|exe "sil doau FileWritePost ".fnameescape(expand("<amatch>"))
line 53:  try
line 54:   au SourceCmd   ftp://*,rcp://*,scp://*,http://*,file://*,https://*,dav://*,davs://*,rsync://*,sftp://*^Iexe 'Nsource '.fnameescape(expand("<amatch>"))
line 55:  catch /^Vim\%((\a\+)\)\=:E216/
line 56:   au SourcePre   ftp://*,rcp://*,scp://*,http://*,file://*,https://*,dav://*,davs://*,rsync://*,sftp://*^Iexe 'Nsource '.fnameescape(expand("<amatch>"))
line 57:  endtry
line 58: augroup END
line 59: 
line 60: " Commands: :Nread, :Nwrite, :NetUserPass {{{2
line 61: com! -count=1 -nargs=*^INread^I^Ilet s:svpos= winsaveview()<bar>call netrw#NetRead(<count>,<f-args>)<bar>call winrestview(s:svpos)
line 62: com! -range=% -nargs=*^INwrite^I^Ilet s:svpos= winsaveview()<bar><line1>,<line2>call netrw#NetWrite(<f-args>)<bar>call winrestview(s:svpos)
line 63: com! -nargs=*^I^INetUserPass^Icall NetUserPass(<f-args>)
line 64: com! -nargs=*^I        Nsource^I^Ilet s:svpos= winsaveview()<bar>call netrw#NetSource(<f-args>)<bar>call winrestview(s:svpos)
line 65: com! -nargs=?^I^INtree^I^Icall netrw#SetTreetop(1,<q-args>)
line 66: 
line 67: " Commands: :Explore, :Sexplore, Hexplore, Vexplore, Lexplore {{{2
line 68: com! -nargs=* -bar -bang -count=0 -complete=dir^IExplore^I^Icall netrw#Explore(<count>,0,0+<bang>0,<q-args>)
line 69: com! -nargs=* -bar -bang -count=0 -complete=dir^ISexplore^Icall netrw#Explore(<count>,1,0+<bang>0,<q-args>)
line 70: com! -nargs=* -bar -bang -count=0 -complete=dir^IHexplore^Icall netrw#Explore(<count>,1,2+<bang>0,<q-args>)
line 71: com! -nargs=* -bar -bang -count=0 -complete=dir^IVexplore^Icall netrw#Explore(<count>,1,4+<bang>0,<q-args>)
line 72: com! -nargs=* -bar       -count=0 -complete=dir^ITexplore^Icall netrw#Explore(<count>,0,6        ,<q-args>)
line 73: com! -nargs=* -bar -bang^I^I^INexplore^Icall netrw#Explore(-1,0,0,<q-args>)
line 74: com! -nargs=* -bar -bang^I^I^IPexplore^Icall netrw#Explore(-2,0,0,<q-args>)
line 75: com! -nargs=* -bar -bang -count=0 -complete=dir Lexplore^Icall netrw#Lexplore(<count>,<bang>0,<q-args>)
line 76: 
line 77: " Commands: NetrwSettings {{{2
line 78: com! -nargs=0^INetrwSettings^Icall netrwSettings#NetrwSettings()
line 79: com! -bang^INetrwClean^Icall netrw#Clean(<bang>0)
line 80: 
line 81: " Maps:
line 82: if !exists("g:netrw_nogx")
line 83:  if maparg('gx','n') == ""
line 84:   if !hasmapto('<Plug>NetrwBrowseX')
line 85:    nmap <unique> gx <Plug>NetrwBrowseX
line 86:   endif
line 87:   nno <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<cr>
line 88:  endif
line 89:  if maparg('gx','x') == ""
line 90:   if !hasmapto('<Plug>NetrwBrowseXVis')
line 91:    xmap <unique> gx <Plug>NetrwBrowseXVis
line 92:   endif
line 93:   xno <silent> <Plug>NetrwBrowseXVis :<c-u>call netrw#BrowseXVis()<cr>
line 94:  endif
line 95: endif
line 96: if exists("g:netrw_usetab") && g:netrw_usetab
line 97:  if maparg('<c-tab>','n') == ""
line 98:   nmap <unique> <c-tab> <Plug>NetrwShrink
line 99:  endif
line 100:  nno <silent> <Plug>NetrwShrink :call netrw#Shrink()<cr>
line 101: endif
line 102: 
line 103: " ---------------------------------------------------------------------
line 104: " LocalBrowse: invokes netrw#LocalBrowseCheck() on directory buffers {{{2
line 105: fun! s:LocalBrowse(dirname)
line 149: 
line 150: " ---------------------------------------------------------------------
line 151: " s:VimEnter: after all vim startup stuff is done, this function is called. {{{2
line 152: "             Its purpose: to look over all windows and run s:LocalBrowse() on
line 153: "             them, which checks if they're directories and will create a directory
line 154: "             listing when appropriate.
line 155: "             It also sets s:vimentered, letting s:LocalBrowse() know that s:VimEnter()
line 156: "             has already been called.
line 157: fun! s:VimEnter(dirname)
line 177: 
line 178: " ---------------------------------------------------------------------
line 179: " NetrwStatusLine: {{{1
line 180: fun! NetrwStatusLine()
line 191: 
line 192: " ------------------------------------------------------------------------
line 193: " NetUserPass: set username and password for subsequent ftp transfer {{{1
line 194: "   Usage:  :call NetUserPass()^I^I^I-- will prompt for userid and password
line 195: "^I    :call NetUserPass("uid")^I^I-- will prompt for password
line 196: "^I    :call NetUserPass("uid","password") -- sets global userid and password
line 197: fun! NetUserPass(...)
line 221: 
line 222: " ------------------------------------------------------------------------
line 223: " Modelines And Restoration: {{{1
line 224: let &cpo= s:keepcpo
line 225: unlet s:keepcpo
line 226: " vim:ts=8 fdm=marker
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/netrwPlugin.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/osc52.lua
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/osc52.lua"
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/osc52.lua
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/rplugin.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/rplugin.vim"
line 1: if exists('g:loaded_remote_plugins')
line 2:   finish
line 3: endif
line 4: let g:loaded_remote_plugins = '/path/to/manifest'
line 5: 
line 6: " Get the path to the rplugin manifest file.
line 7: function! s:GetManifestPath() abort
line 26: 
line 27: " Old manifest file based on known script locations.
line 28: function! s:GetOldManifestPaths() abort
line 43: 
line 44: function! s:GetManifest() abort
line 57: 
line 58: function! s:LoadRemotePlugins() abort
line 64: 
line 65: command! -bar UpdateRemotePlugins call remote#host#UpdateRemotePlugins()
line 66: 
line 67: if index(v:argv, "--clean") < 0
line 68:   call s:LoadRemotePlugins()
calling <SNR>22_LoadRemotePlugins()

line 1:   let g:loaded_remote_plugins = s:GetManifest()
calling <SNR>22_GetManifest()

line 1:   let manifest = s:GetManifestPath()
calling <SNR>22_GetManifestPath()

line 1:   let manifest_base = ''
line 2: 
line 3:   if exists('$NVIM_RPLUGIN_MANIFEST')
line 4:     return fnamemodify($NVIM_RPLUGIN_MANIFEST, ':p')
line 5:   endif
line 6: 
line 7:   let dest = stdpath('data')
line 8:   if !empty(dest)
line 9:     if !isdirectory(dest)
line 10:       if getftype(dest) != "link"
line 11:         call mkdir(dest, 'p', 0700)
line 12:       endif
line 13:     endif
line 14:     let manifest_base = dest
line 15:   endif
line 16: 
line 17:   return manifest_base.'/rplugin.vim'
<SNR>22_GetManifestPath returning '/home/server01/.local/share/nvim/rplugin.vim'

continuing in <SNR>22_GetManifest

line 2:   if !filereadable(manifest)
line 3:     " Check if an old manifest file exists and move it to the new location.
line 4:     for old_manifest in s:GetOldManifestPaths()
calling <SNR>22_GetOldManifestPaths()

line 1:   let prefix = exists('$MYVIMRC') ? $MYVIMRC : matchstr(get(split(execute('scriptnames'), '\n'), 0, ''), '\f\+$')
line 4:   let origpath = fnamemodify(expand(prefix, 1), ':h').'/.'.fnamemodify(prefix, ':t').'-rplugin~'
line 6:   if !has('win32')
line 7:     return [origpath]
<SNR>22_GetOldManifestPaths returning ['/home/server01/.config/nvim/.init.lua-rplugin~']

continuing in <SNR>22_GetManifest

line 5:       if filereadable(old_manifest)
line 6:         call rename(old_manifest, manifest)
line 7:         break
line 8:       endif
line 9:     endfor
line 4:     for old_manifest in s:GetOldManifestPaths()
line 5:       if filereadable(old_manifest)
line 6:         call rename(old_manifest, manifest)
line 7:         break
line 8:       endif
line 9:     endfor
line 10:   endif
line 11:   return manifest
<SNR>22_GetManifest returning '/home/server01/.local/share/nvim/rplugin.vim'

continuing in <SNR>22_LoadRemotePlugins

line 2:   if filereadable(g:loaded_remote_plugins)
line 3:     execute 'source' fnameescape(g:loaded_remote_plugins)
line 4:   endif
<SNR>22_LoadRemotePlugins returning #0

continuing in /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/rplugin.vim

line 69: endif
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/rplugin.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/shada.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/shada.vim"
line 1: if exists('g:loaded_shada_plugin')
line 2:   finish
line 3: endif
line 4: let g:loaded_shada_plugin = 1
line 5: 
line 6: augroup ShaDaCommands
line 7:   autocmd!
line 8:   autocmd BufReadCmd *.shada,*.shada.tmp.[a-z] :if !empty(v:cmdarg)|throw '++opt not supported'|endif |call setline('.', shada#get_strings(readfile(expand('<afile>'),'b'))) |setlocal filetype=shada
line 12:   autocmd FileReadCmd *.shada,*.shada.tmp.[a-z] :if !empty(v:cmdarg)|throw '++opt not supported'|endif |call append("'[", shada#get_strings(readfile(expand('<afile>'), 'b')))
line 15:   autocmd BufWriteCmd *.shada,*.shada.tmp.[a-z] :if !empty(v:cmdarg)|throw '++opt not supported'|endif |if writefile(shada#get_binstrings(getline(1, '$')),expand('<afile>'), 'b') == 0 |  let &l:modified = (expand('<afile>') is# bufname(+expand('<abuf>'))? 0: stridx(&cpoptions, '+') != -1) |endif
line 23:   autocmd FileWriteCmd *.shada,*.shada.tmp.[a-z] :if !empty(v:cmdarg)|throw '++opt not supported'|endif |call writefile(shada#get_binstrings(getline(min([line("'["), line("']")]),max([line("'["), line("']")]))),expand('<afile>'),'b')
line 30:   autocmd FileAppendCmd *.shada,*.shada.tmp.[a-z] :if !empty(v:cmdarg)|throw '++opt not supported'|endif |call writefile(shada#get_binstrings(getline(min([line("'["), line("']")]),max([line("'["), line("']")]))),expand('<afile>'),'ab')
line 37:   autocmd SourceCmd *.shada,*.shada.tmp.[a-z] :execute 'rshada' fnameescape(expand('<afile>'))
line 39: augroup END
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/shada.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/spellfile.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/spellfile.vim"
line 1: " Vim plugin for downloading spell files
line 2: 
line 3: if exists("loaded_spellfile_plugin") || &cp || exists("#SpellFileMissing")
line 4:   finish
line 5: endif
line 6: let loaded_spellfile_plugin = 1
line 7: 
line 8: autocmd SpellFileMissing * call spellfile#LoadFile(expand('<amatch>'))
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/spellfile.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/tarPlugin.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/tarPlugin.vim"
line 1: " tarPlugin.vim -- a Vim plugin for browsing tarfiles
line 2: " Original was copyright (c) 2002, Michael C. Toren <mct@toren.net>
line 3: " Modified by Charles E. Campbell
line 4: " Distributed under the GNU General Public License.
line 5: "
line 6: " Updates are available from <http://michael.toren.net/code/>.  If you
line 7: " find this script useful, or have suggestions for improvements, please
line 8: " let me know.
line 9: " Also look there for further comments and documentation.
line 10: "
line 11: " This part only sets the autocommands.  The functions are in autoload/tar.vim.
line 12: " ---------------------------------------------------------------------
line 13: "  Load Once: {{{1
line 14: if &cp || exists("g:loaded_tarPlugin")
line 15:  finish
line 16: endif
line 17: let g:loaded_tarPlugin = "v32"
line 18: let s:keepcpo          = &cpo
line 19: set cpo&vim
line 20: 
line 21: " ---------------------------------------------------------------------
line 22: "  Public Interface: {{{1
line 23: augroup tar
line 24:   au!
line 25:   au BufReadCmd   tarfile::*^Icall tar#Read(expand("<amatch>"), 1)
line 26:   au FileReadCmd  tarfile::*^Icall tar#Read(expand("<amatch>"), 0)
line 27:   au BufWriteCmd  tarfile::*^Icall tar#Write(expand("<amatch>"))
line 28:   au FileWriteCmd tarfile::*^Icall tar#Write(expand("<amatch>"))
line 29: 
line 30:   if has("unix")
line 31:    au BufReadCmd   tarfile::*/*^Icall tar#Read(expand("<amatch>"), 1)
line 32:    au FileReadCmd  tarfile::*/*^Icall tar#Read(expand("<amatch>"), 0)
line 33:    au BufWriteCmd  tarfile::*/*^Icall tar#Write(expand("<amatch>"))
line 34:    au FileWriteCmd tarfile::*/*^Icall tar#Write(expand("<amatch>"))
line 35:   endif
line 36: 
line 37:   au BufReadCmd   *.tar.gz^I^Icall tar#Browse(expand("<amatch>"))
line 38:   au BufReadCmd   *.tar^I^I^Icall tar#Browse(expand("<amatch>"))
line 39:   au BufReadCmd   *.lrp^I^I^Icall tar#Browse(expand("<amatch>"))
line 40:   au BufReadCmd   *.tar.bz2^I^Icall tar#Browse(expand("<amatch>"))
line 41:   au BufReadCmd   *.tar.Z^I^Icall tar#Browse(expand("<amatch>"))
line 42:   au BufReadCmd   *.tbz^I^I^Icall tar#Browse(expand("<amatch>"))
line 43:   au BufReadCmd   *.tgz^I^I^Icall tar#Browse(expand("<amatch>"))
line 44:   au BufReadCmd   *.tar.lzma^Icall tar#Browse(expand("<amatch>"))
line 45:   au BufReadCmd   *.tar.xz^I^Icall tar#Browse(expand("<amatch>"))
line 46:   au BufReadCmd   *.txz^I^I^Icall tar#Browse(expand("<amatch>"))
line 47:   au BufReadCmd   *.tar.zst^I^Icall tar#Browse(expand("<amatch>"))
line 48:   au BufReadCmd   *.tzst^I^I^Icall tar#Browse(expand("<amatch>"))
line 49: augroup END
line 50: 
line 51: " ---------------------------------------------------------------------
line 52: " Restoration And Modelines: {{{1
line 53: " vim: fdm=marker
line 54: let &cpo= s:keepcpo
line 55: unlet s:keepcpo
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/tarPlugin.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/tohtml.lua
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/tohtml.lua"
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/tohtml.lua
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/tutor.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/tutor.vim"
line 1: if exists('g:loaded_tutor_mode_plugin') || &compatible
line 2:     finish
line 3: endif
line 4: let g:loaded_tutor_mode_plugin = 1
line 5: 
line 6: command! -nargs=? -complete=custom,tutor#TutorCmdComplete Tutor call tutor#TutorCmd(<q-args>)
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/tutor.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing: source /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/zipPlugin.vim
line 0: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/plugin/zipPlugin.vim"
line 1: " zipPlugin.vim: Handles browsing zipfiles
line 2: "            PLUGIN PORTION
line 3: " Date:^I^I^IDec 07, 2021
line 4: " Maintainer:^IThis runtime file is looking for a new maintainer.
line 5: " Former Maintainer:^ICharles E Campbell
line 6: " License:^I^IVim License  (see vim's :help license)
line 7: " Copyright:    Copyright (C) 2005-2016 Charles E. Campbell {{{1
line 8: "               Permission is hereby granted to use and distribute this code,
line 9: "               with or without modifications, provided that this copyright
line 10: "               notice is copied with it. Like anything else that's free,
line 11: "               zipPlugin.vim is provided *as is* and comes with no warranty
line 12: "               of any kind, either expressed or implied. By using this
line 13: "               plugin, you agree that in no event will the copyright
line 14: "               holder be liable for any damages resulting from the use
line 15: "               of this software.
line 16: "
line 17: " (James 4:8 WEB) Draw near to God, and he will draw near to you.
line 18: " Cleanse your hands, you sinners; and purify your hearts, you double-minded.
line 19: " ---------------------------------------------------------------------
line 20: " Load Once: {{{1
line 21: if &cp || exists("g:loaded_zipPlugin")
line 22:  finish
line 23: endif
line 24: let g:loaded_zipPlugin = "v33"
line 25: let s:keepcpo          = &cpo
line 26: set cpo&vim
line 27: 
line 28: " ---------------------------------------------------------------------
line 29: " Options: {{{1
line 30: if !exists("g:zipPlugin_ext")
line 31:  let g:zipPlugin_ext='*.aar,*.apk,*.celzip,*.crtx,*.docm,*.docx,*.dotm,*.dotx,*.ear,*.epub,*.gcsx,*.glox,*.gqsx,*.ja,*.jar,*.kmz,*.odb,*.odc,*.odf,*.odg,*.odi,*.odm,*.odp,*.ods,*.odt,*.otc,*.otf,*.otg,*.oth,*.oti,*.otp,*.ots,*.ott,*.oxt,*.potm,*.potx,*.ppam,*.ppsm,*.ppsx,*.pptm,*.pptx,*.sldx,*.thmx,*.vdw,*.war,*.wsz,*.xap,*.xlam,*.xlsb,*.xlsm,*.xlsx,*.xltm,*.xltx,*.xpi,*.zip'
line 32: endif
line 33: 
line 34: " ---------------------------------------------------------------------
line 35: " Public Interface: {{{1
line 36: augroup zip
line 37:  au!
line 38:  au BufReadCmd   zipfile:*^Icall zip#Read(expand("<amatch>"), 1)
line 39:  au FileReadCmd  zipfile:*^Icall zip#Read(expand("<amatch>"), 0)
line 40:  au BufWriteCmd  zipfile:*^Icall zip#Write(expand("<amatch>"))
line 41:  au FileWriteCmd zipfile:*^Icall zip#Write(expand("<amatch>"))
line 42: 
line 43:  if has("unix")
line 44:   au BufReadCmd   zipfile:*/*^Icall zip#Read(expand("<amatch>"), 1)
line 45:   au FileReadCmd  zipfile:*/*^Icall zip#Read(expand("<amatch>"), 0)
line 46:   au BufWriteCmd  zipfile:*/*^Icall zip#Write(expand("<amatch>"))
line 47:   au FileWriteCmd zipfile:*/*^Icall zip#Write(expand("<amatch>"))
line 48:  endif
line 49: 
line 50:  exe "au BufReadCmd ".g:zipPlugin_ext.' call zip#Browse(expand("<amatch>"))'
line 50: au BufReadCmd *.aar,*.apk,*.celzip,*.crtx,*.docm,*.docx,*.dotm,*.dotx,*.ear,*.epub,*.gcsx,*.glox,*.gqsx,*.ja,*.jar,*.kmz,*.odb,*.odc,*.odf,*.odg,*.odi,*.odm,*.odp,*.ods,*.odt,*.otc,*.otf,*.otg,*.oth,*.oti,*.otp,*.ots,*.ott,*.oxt,*.potm,*.potx,*.ppam,*.ppsm,*.ppsx,*.pptm,*.pptx,*.sldx,*.thmx,*.vdw,*.war,*.wsz,*.xap,*.xlam,*.xlsb,*.xlsm,*.xlsx,*.xltm,*.xltx,*.xpi,*.zip call zip#Browse(expand("<amatch>"))
line 51: augroup END
line 52: 
line 53: " ---------------------------------------------------------------------
line 54: "  Restoration And Modelines: {{{1
line 55: "  vim: fdm=marker
line 56: let &cpo= s:keepcpo
line 57: unlet s:keepcpo
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/zipPlugin.vim
continuing in nvim_exec2() called at /home/server01/.config/nvim/init.lua:0
Executing User Autocommands for "LazyDone"
autocommand <Lua 33: ~/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/util.lua:183>

Executing: 
finished sourcing /home/server01/.config/nvim/init.lua
Searching for "filetype.lua filetype.vim" in runtime path
Searching for "/home/server01/.config/nvim/filetype.lua"
Searching for "/home/server01/.config/nvim/filetype.vim"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/filetype.lua"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/filetype.vim"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/filetype.lua"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/filetype.vim"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/filetype.lua"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/filetype.vim"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/filetype.lua"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/filetype.vim"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/filetype.lua"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/filetype.vim"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/filetype.lua"
sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/filetype.lua"
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/filetype.lua
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/filetype.vim"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/filetype.lua"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/filetype.vim"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/filetype.lua"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/filetype.vim"
Searching for "/home/server01/.local/state/nvim/lazy/readme/filetype.lua"
Searching for "/home/server01/.local/state/nvim/lazy/readme/filetype.vim"
Executing: so $VIMRUNTIME/syntax/syntax.vim
sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/syntax/syntax.vim"
line 1: " Vim syntax support file
line 2: " Maintainer:^IThe Vim Project <https://github.com/vim/vim>
line 3: " Last Change:^I2023 Aug 10
line 4: " Former Maintainer:^IBram Moolenaar <Bram@vim.org>
line 5: 
line 6: " This file is used for ":syntax on".
line 7: " It installs the autocommands and starts highlighting for all buffers.
line 8: 
line 9: if !has("syntax")
line 10:   finish
line 11: endif
line 12: 
line 13: " If Syntax highlighting appears to be on already, turn it off first, so that
line 14: " any leftovers are cleared.
line 15: if exists("syntax_on") || exists("syntax_manual")
line 16:   so <sfile>:p:h/nosyntax.vim
line 17: endif
line 18: 
line 19: " Load the Syntax autocommands and set the default methods for highlighting.
line 20: runtime syntax/synload.vim
Searching for "syntax/synload.vim" in runtime path
Searching for "/home/server01/.config/nvim/syntax/synload.vim"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/syntax/synload.vim"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/syntax/synload.vim"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/syntax/synload.vim"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/syntax/synload.vim"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/syntax/synload.vim"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/syntax/synload.vim"
line 20: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/syntax/synload.vim"
line 1: " Vim syntax support file
line 2: " Maintainer:^IThe Vim Project <https://github.com/vim/vim>
line 3: " Last Change:^I2023 Aug 10
line 4: " Former Maintainer:^IBram Moolenaar <Bram@vim.org>
line 5: 
line 6: " This file sets up for syntax highlighting.
line 7: " It is loaded from "syntax.vim" and "manual.vim".
line 8: " 1. Set the default highlight groups.
line 9: " 2. Install Syntax autocommands for all the available syntax files.
line 10: 
line 11: if !has("syntax")
line 12:   finish
line 13: endif
line 14: 
line 15: " let others know that syntax has been switched on
line 16: let syntax_on = 1
line 17: 
line 18: " Line continuation is used here, remove 'C' from 'cpoptions'
line 19: let s:cpo_save = &cpo
line 20: set cpo&vim
line 21: 
line 22: " First remove all old syntax autocommands.
line 23: au! Syntax
line 24: 
line 25: au Syntax *^I^Icall s:SynSet()
line 26: 
line 27: fun! s:SynSet()
line 58: 
line 59: 
line 60: " Handle adding doxygen to other languages (C, C++, C#, IDL, java, php, DataScript)
line 61: au Syntax c,cpp,cs,idl,java,php,datascript if (exists('b:load_doxygen_syntax') && b:load_doxygen_syntax)^I|| (exists('g:load_doxygen_syntax') && g:load_doxygen_syntax)   | runtime! syntax/doxygen.vim | endif
line 66: 
line 67: 
line 68: " Source the user-specified syntax highlighting file
line 69: if exists("mysyntaxfile")
line 70:   let s:fname = expand(mysyntaxfile)
line 71:   if filereadable(s:fname)
line 72:     execute "source " . fnameescape(s:fname)
line 73:   endif
line 74: endif
line 75: 
line 76: " Restore 'cpoptions'
line 77: let &cpo = s:cpo_save
line 78: unlet s:cpo_save
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/syntax/synload.vim
continuing in /opt/nvim-linux-x86_64/share/nvim/runtime/syntax/syntax.vim
line 21: 
line 22: " Load the FileType autocommands if not done yet.
line 23: if exists("did_load_filetypes")
line 24:   let s:did_ft = 1
line 25: else
line 26:   filetype on
line 27:   let s:did_ft = 0
line 28: endif
line 29: 
line 30: " Set up the connection between FileType and Syntax autocommands.
line 31: " This makes the syntax automatically set when the file type is detected
line 32: " unless treesitter highlighting is enabled.
line 33: " Avoid an error when 'verbose' is set and <amatch> expansion fails.
line 34: augroup syntaxset
line 35:   au! FileType *^Iif !exists('b:ts_highlight') | 0verbose exe "set syntax=" . expand("<amatch>") | endif
line 36: augroup END
line 37: 
line 38: " Execute the syntax autocommands for the each buffer.
line 39: " If the filetype wasn't detected yet, do that now.
line 40: " Always do the syntaxset autocommands, for buffers where the 'filetype'
line 41: " already was set manually (e.g., help buffers).
line 42: doautoall syntaxset FileType
Executing FileType Autocommands for "*"
autocommand if !exists('b:ts_highlight') | 0verbose exe "set syntax=" . expand("<amatch>") | endif

Executing: if !exists('b:ts_highlight') | 0verbose exe "set syntax=" . expand("<amatch>") | endif
Executing:  0verbose exe "set syntax=" . expand("<amatch>") | endif
Executing:  endif
line 43: if !s:did_ft
line 44:   doautoall filetypedetect BufRead
line 45: endif
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/syntax/syntax.vim
Reading ShaDa file "/home/server01/.local/state/nvim/shada/main.shada" info marks oldfiles
Reading ShaDa file "/home/server01/.local/state/nvim/shada/main.shada" marks
Reading undo file: /home/server01/.local/state/nvim/undo/%home%server01%.config%nvim%init.lua
Executing BufReadPost Autocommands for "*"
autocommand <Lua 38: /opt/nvim-linux-x86_64/share/nvim/runtime/filetype.lua:10>

Executing FileType Autocommands for "*"
autocommand call s:LoadFTPlugin()

Executing: call s:LoadFTPlugin()
calling <SNR>3_LoadFTPlugin()

line 1:     if exists("b:undo_ftplugin")
line 2:       exe b:undo_ftplugin
line 3:       unlet! b:undo_ftplugin b:did_ftplugin
line 4:     endif
line 5: 
line 6:     let s = expand("<amatch>")
line 7:     if s != ""
line 8:       if &cpo =~# "S" && exists("b:did_ftplugin")
line 9: ^I" In compatible mode options are reset to the global values, need to
line 10: ^I" set the local values also when a plugin was already used.
line 11: ^Iunlet b:did_ftplugin
line 12:       endif
line 13: 
line 14:       " When there is a dot it is used to separate filetype names.  Thus for
line 15:       " "aaa.bbb" load "aaa" and then "bbb".
line 16:       for name in split(s, '\.')
line 17:         " Load Lua ftplugins after Vim ftplugins _per directory_
line 18:         " TODO(clason): use nvim__get_runtime when supports globs and modeline
line 19:         " XXX: "[.]" in the first pattern makes it a wildcard on Windows
line 20:         exe $'runtime! ftplugin/{name}[.]{{vim,lua}} ftplugin/{name}_*.{{vim,lua}} ftplugin/{name}/*.{{vim,lua}}'
line 20: runtime! ftplugin/lua[.]{vim,lua} ftplugin/lua_*.{vim,lua} ftplugin/lua/*.{vim,lua}
Searching for "ftplugin/lua[.]{vim,lua} ftplugin/lua_*.{vim,lua} ftplugin/lua/*.{vim,lua}" in runtime path
Searching for "/home/server01/.config/nvim/ftplugin/lua[.]{vim,lua}"
Searching for "/home/server01/.config/nvim/ftplugin/lua_*.{vim,lua}"
Searching for "/home/server01/.config/nvim/ftplugin/lua/*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/ftplugin/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/ftplugin/lua_*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/ftplugin/lua/*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/ftplugin/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/ftplugin/lua_*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/ftplugin/lua/*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/ftplugin/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/ftplugin/lua_*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/ftplugin/lua/*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/ftplugin/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/ftplugin/lua_*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/ftplugin/lua/*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/ftplugin/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/ftplugin/lua_*.{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/ftplugin/lua/*.{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin/lua[.]{vim,lua}"
line 20: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin/lua.vim"
line 1: " Vim filetype plugin file.
line 2: " Language:^I^ILua
line 3: " Maintainer:^I^IDoug Kearns <dougkearns@gmail.com>
line 4: " Previous Maintainer:^IMax Ischenko <mfi@ukr.net>
line 5: " Contributor:^I^IDorai Sitaram <ds26@gte.com>
line 6: "^I^I^IC.D. MacEachern <craig.daniel.maceachern@gmail.com>
line 7: "^I^I^ITyler Miller <tmillr@proton.me>
line 8: " Last Change:^I^I2024 Jan 14
line 9: 
line 10: if exists("b:did_ftplugin")
line 11:   finish
line 12: endif
line 13: let b:did_ftplugin = 1
line 14: 
line 15: let s:cpo_save = &cpo
line 16: set cpo&vim
line 17: 
line 18: setlocal comments=:---,:--
line 19: setlocal commentstring=--\ %s
line 20: setlocal formatoptions-=t formatoptions+=croql
line 21: 
line 22: let &l:define = '\<function\|\<local\%(\s\+function\)\='
line 23: 
line 24: " TODO: handle init.lua
line 25: setlocal includeexpr=tr(v:fname,'.','/')
line 26: setlocal suffixesadd=.lua
line 27: 
line 28: let b:undo_ftplugin = "setlocal cms< com< def< fo< inex< sua<"
line 29: 
line 30: if exists("loaded_matchit") && !exists("b:match_words")
line 31:   let b:match_ignorecase = 0
line 32:   let b:match_words = '\<\%(do\|function\|if\)\>:' .. '\<\%(return\|else\|elseif\)\>:' .. '\<end\>,' .. '\<repeat\>:\<until\>,' .. '\%(--\)\=\[\(=*\)\[:]\1]'
line 38:   let b:undo_ftplugin ..= " | unlet! b:match_words b:match_ignorecase"
line 39: endif
line 40: 
line 41: if (has("gui_win32") || has("gui_gtk")) && !exists("b:browsefilter")
line 42:   let b:browsefilter = "Lua Source Files (*.lua)\t*.lua\n"
line 43:   if has("win32")
line 44:     let b:browsefilter ..= "All Files (*.*)\t*\n"
line 45:   else
line 46:     let b:browsefilter ..= "All Files (*)\t*\n"
line 47:   endif
line 48:   let b:undo_ftplugin ..= " | unlet! b:browsefilter"
line 49: endif
line 50: 
line 51: let &cpo = s:cpo_save
line 52: unlet s:cpo_save
line 53: 
line 54: " vim: nowrap sw=2 sts=2 ts=8 noet:
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin/lua.vim
continuing in <SNR>3_LoadFTPlugin
line 20: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin/lua.lua"
Searching for "parser/lua.*" in runtime path
Searching for "/home/server01/.config/nvim/parser/lua.*"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/parser/lua.*"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/parser/lua.*"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/parser/lua.*"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/parser/lua.*"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/parser/lua.*"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/parser/lua.*"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/parser/lua.*"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/parser/lua.*"
Searching for "queries/lua/injections.scm" in runtime path
Searching for "/home/server01/.config/nvim/queries/lua/injections.scm"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/queries/lua/injections.scm"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/queries/lua/injections.scm"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/queries/lua/injections.scm"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/queries/lua/injections.scm"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/queries/lua/injections.scm"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/queries/lua/injections.scm"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/queries/lua/injections.scm"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/queries/lua/injections.scm"
Searching for "/home/server01/.local/state/nvim/lazy/readme/queries/lua/injections.scm"
Executing Syntax Autocommands for "*"
autocommand call s:SynSet()

Executing: call s:SynSet()
calling <SNR>30_SynSet()

line 1:   " clear syntax for :set syntax=OFF  and any syntax name that doesn't exist
line 2:   syn clear
line 3:   if exists("b:current_syntax")
line 4:     unlet b:current_syntax
line 5:   endif
line 6: 
line 7:   0verbose let s = expand("<amatch>")
line 8:   if s == "ON"
line 9:     " :set syntax=ON
line 10:     if &filetype == ""
line 11:       echohl ErrorMsg
line 12:       echo "filetype unknown"
line 13:       echohl None
line 14:     endif
line 15:     let s = &filetype
line 16:   elseif s == "OFF"
line 17:     let s = ""
line 18:   endif
line 19: 
line 20:   if s != ""
line 21:     " Load the syntax file(s).  When there are several, separated by dots,
line 22:     " load each in sequence.  Skip empty entries.
line 23:     for name in split(s, '\.')
line 24:       if !empty(name)
line 25:         " XXX: "[.]" in the first pattern makes it a wildcard on Windows
line 26:         exe $'runtime! syntax/{name}[.]{{vim,lua}} syntax/{name}/*.{{vim,lua}}'
line 27:       endif
line 28:     endfor
line 29:   endif
<SNR>30_SynSet returning #0

continuing in Syntax Autocommands for "*"

finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin/lua.lua
continuing in <SNR>3_LoadFTPlugin
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin/lua_*.{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/ftplugin/lua/*.{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/ftplugin/lua[.]{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/ftplugin/lua_*.{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/ftplugin/lua/*.{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/ftplugin/lua[.]{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/ftplugin/lua_*.{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/ftplugin/lua/*.{vim,lua}"
Searching for "/home/server01/.local/state/nvim/lazy/readme/ftplugin/lua[.]{vim,lua}"
Searching for "/home/server01/.local/state/nvim/lazy/readme/ftplugin/lua_*.{vim,lua}"
Searching for "/home/server01/.local/state/nvim/lazy/readme/ftplugin/lua/*.{vim,lua}"
line 21:       endfor
line 16:       for name in split(s, '\.')
line 17:         " Load Lua ftplugins after Vim ftplugins _per directory_
line 18:         " TODO(clason): use nvim__get_runtime when supports globs and modeline
line 19:         " XXX: "[.]" in the first pattern makes it a wildcard on Windows
line 20:         exe $'runtime! ftplugin/{name}[.]{{vim,lua}} ftplugin/{name}_*.{{vim,lua}} ftplugin/{name}/*.{{vim,lua}}'
line 21:       endfor
line 22:     endif
<SNR>3_LoadFTPlugin returning #0

continuing in FileType Autocommands for "*"

Executing FileType Autocommands for "*"
autocommand call s:LoadIndent()

Executing: call s:LoadIndent()
calling <SNR>4_LoadIndent()

line 1:     if exists("b:undo_indent")
line 2:       exe b:undo_indent
line 3:       unlet! b:undo_indent b:did_indent
line 4:     endif
line 5:     let s = expand("<amatch>")
line 6:     if s != ""
line 7:       if exists("b:did_indent")
line 8: ^Iunlet b:did_indent
line 9:       endif
line 10: 
line 11:       " When there is a dot it is used to separate filetype names.  Thus for
line 12:       " "aaa.bbb" load "indent/aaa.vim" and then "indent/bbb.vim".
line 13:       for name in split(s, '\.')
line 14:         " XXX: "[.]" in the pattern makes it a wildcard on Windows
line 15:         exe $'runtime! indent/{name}[.]{{vim,lua}}'
line 15: runtime! indent/lua[.]{vim,lua}
Searching for "indent/lua[.]{vim,lua}" in runtime path
Searching for "/home/server01/.config/nvim/indent/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/indent/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/indent/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/indent/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/indent/lua[.]{vim,lua}"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/indent/lua[.]{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/indent/lua[.]{vim,lua}"
line 15: sourcing "/opt/nvim-linux-x86_64/share/nvim/runtime/indent/lua.vim"
line 1: " Vim indent file
line 2: " Language:^ILua script
line 3: " Maintainer:^IMarcus Aurelius Farias <marcus.cf 'at' bol.com.br>
line 4: " First Author:^IMax Ischenko <mfi 'at' ukr.net>
line 5: " Last Change:^I2017 Jun 13
line 6: "^I^I2022 Sep 07: b:undo_indent added by Doug Kearns
line 7: 
line 8: " Only load this indent file when no other was loaded.
line 9: if exists("b:did_indent")
line 10:   finish
line 11: endif
line 12: let b:did_indent = 1
line 13: 
line 14: setlocal indentexpr=GetLuaIndent()
line 15: 
line 16: " To make Vim call GetLuaIndent() when it finds '\s*end' or '\s*until'
line 17: " on the current line ('else' is default and includes 'elseif').
line 18: setlocal indentkeys+=0=end,0=until
line 19: 
line 20: setlocal autoindent
line 21: 
line 22: let b:undo_indent = "setlocal autoindent< indentexpr< indentkeys<"
line 23: 
line 24: " Only define the function once.
line 25: if exists("*GetLuaIndent")
line 26:   finish
line 27: endif
line 28: 
line 29: function! GetLuaIndent()
line 38: 
line 39: function! GetLuaIndentIntern()
finished sourcing /opt/nvim-linux-x86_64/share/nvim/runtime/indent/lua.vim
continuing in <SNR>4_LoadIndent
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/indent/lua[.]{vim,lua}"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/indent/lua[.]{vim,lua}"
Searching for "/home/server01/.local/state/nvim/lazy/readme/indent/lua[.]{vim,lua}"
line 16:       endfor
line 13:       for name in split(s, '\.')
line 14:         " XXX: "[.]" in the pattern makes it a wildcard on Windows
line 15:         exe $'runtime! indent/{name}[.]{{vim,lua}}'
line 16:       endfor
line 17:     endif
<SNR>4_LoadIndent returning #0

continuing in FileType Autocommands for "*"

Executing FileType Autocommands for "*"
autocommand if !exists('b:ts_highlight') | 0verbose exe "set syntax=" . expand("<amatch>") | endif

Executing: if !exists('b:ts_highlight') | 0verbose exe "set syntax=" . expand("<amatch>") | endif
Executing:  0verbose exe "set syntax=" . expand("<amatch>") | endif
Executing:  endif
Executing: 
autocommand if !did_filetype() && expand('<amatch>') !~ g:ft_ignore_pat | runtime! scripts.vim | endif

Executing: if !did_filetype() && expand('<amatch>') !~ g:ft_ignore_pat | runtime! scripts.vim | endif
Executing:  runtime! scripts.vim | endif
Executing:  endif
Executing BufReadPost Autocommands for "*"
autocommand <Lua 68: /opt/nvim-linux-x86_64/share/nvim/runtime/plugin/editorconfig.lua:4>

Executing: 
Executing BufWinEnter Autocommands for "*"
autocommand autocmd SafeState * ++once call s:Highlight_Matching_Pair()

Executing: autocmd SafeState * ++once call s:Highlight_Matching_Pair()
Executing BufEnter Autocommands for "*"
autocommand sil call s:LocalBrowse(expand("<amatch>"))

Executing: sil call s:LocalBrowse(expand("<amatch>"))
calling <SNR>20_LocalBrowse('/home/server01/.config/nvim/init.lua')

line 1:   " Unfortunate interaction -- only DechoMsg debugging calls can be safely used here.
line 2:   " Otherwise, the BufEnter event gets triggered when attempts to write to
line 3:   " the DBG buffer are made.
line 4: 
line 5:   if !exists("s:vimentered")
line 6:    " If s:vimentered doesn't exist, then the VimEnter event hasn't fired.  It will,
line 7:    " and so s:VimEnter() will then be calling this routine, but this time with s:vimentered defined.
line 8: "   call Dfunc("s:LocalBrowse(dirname<".a:dirname.">)  (s:vimentered doesn't exist)")
line 9: "   call Dret("s:LocalBrowse")
line 10:    return
<SNR>20_LocalBrowse returning #0

continuing in BufEnter Autocommands for "*"

Executing VimEnter Autocommands for "*"
autocommand sil call s:VimEnter(expand("<amatch>"))

Executing: sil call s:VimEnter(expand("<amatch>"))
calling <SNR>20_VimEnter('/home/server01/.config/nvim/init.lua')

line 1: "  call Dfunc("s:VimEnter(dirname<".a:dirname.">) expand(%)<".expand("%").">")
line 2:   if has('nvim') || v:version < 802
line 3:   " Johann Höchtl: reported that the call range... line causes an E488: Trailing characters
line 4:   "                error with neovim. I suspect its because neovim hasn't updated with recent
line 5:   "                vim patches. As is, this code will have problems with popup terminals
line 6:   "                instantiated before the VimEnter event runs.
line 7:   " Ingo Karkat  : E488 also in Vim 8.1.1602
line 8:   let curwin       = winnr()
line 9:   let s:vimentered = 1
line 10:   windo call s:LocalBrowse(expand("%:p"))
line 10: call s:LocalBrowse(expand("%:p"))
calling <SNR>20_LocalBrowse('/home/server01/.config/nvim/init.lua')

line 1:   " Unfortunate interaction -- only DechoMsg debugging calls can be safely used here.
line 2:   " Otherwise, the BufEnter event gets triggered when attempts to write to
line 3:   " the DBG buffer are made.
line 4: 
line 5:   if !exists("s:vimentered")
line 6:    " If s:vimentered doesn't exist, then the VimEnter event hasn't fired.  It will,
line 7:    " and so s:VimEnter() will then be calling this routine, but this time with s:vimentered defined.
line 8: "   call Dfunc("s:LocalBrowse(dirname<".a:dirname.">)  (s:vimentered doesn't exist)")
line 9: "   call Dret("s:LocalBrowse")
line 10:    return
line 11:   endif
line 12: 
line 13: "  call Dfunc("s:LocalBrowse(dirname<".a:dirname.">)  (s:vimentered=".s:vimentered.")")
line 14: 
line 15:   if has("amiga")
line 16:    " The check against '' is made for the Amiga, where the empty
line 17:    " string is the current directory and not checking would break
line 18:    " things such as the help command.
line 19: "   call Decho("(LocalBrowse) dirname<".a:dirname.">  (isdirectory, amiga)")
line 20:    if a:dirname != '' && isdirectory(a:dirname)
line 21:     sil! call netrw#LocalBrowseCheck(a:dirname)
line 22:     if exists("w:netrw_bannercnt") && line('.') < w:netrw_bannercnt
line 23:      exe w:netrw_bannercnt
line 24:     endif
line 25:    endif
line 26: 
line 27:   elseif isdirectory(a:dirname)
line 28: "   call Decho("(LocalBrowse) dirname<".a:dirname."> ft=".&ft."  (isdirectory, not amiga)")
line 29: "   call Dredir("LocalBrowse ft last set: ","verbose set ft")
line 30:    " Jul 13, 2021: for whatever reason, preceding the following call with
line 31:    " a   sil!  causes an unbalanced if-endif vim error
line 32:    call netrw#LocalBrowseCheck(a:dirname)
line 33:    if exists("w:netrw_bannercnt") && line('.') < w:netrw_bannercnt
line 34:     exe w:netrw_bannercnt
line 35:    endif
line 36: 
line 37:   else
line 38:    " not a directory, ignore it
line 39: "   call Decho("(LocalBrowse) dirname<".a:dirname."> not a directory, ignoring...")
line 40:   endif
line 41: 
line 42: "  call Dret("s:LocalBrowse")
<SNR>20_LocalBrowse returning #0

continuing in <SNR>20_VimEnter

line 11:   exe curwin."wincmd w"
line 11: 1wincmd w
line 12:  else
line 13:   " the following complicated expression comes courtesy of lacygoill; largely does the same thing as the windo and 
line 14:   " wincmd which are commented out, but avoids some side effects. Allows popup terminal before VimEnter.
line 15:   let s:vimentered = 1
line 16:   call range(1, winnr('$'))->map({_, v -> win_execute(win_getid(v), 'call expand("%:p")->s:LocalBrowse()')})
line 17:  endif
line 18: "  call Dret("s:VimEnter")
<SNR>20_VimEnter returning #0

continuing in VimEnter Autocommands for "*"

Executing UIEnter Autocommands for "*"
autocommand <Lua 31: ~/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/config.lua:327>

Executing: 
autocommand <Lua 79: ~/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/util.lua:189>

Executing: 
Executing SafeState Autocommands for "*"
autocommand call s:Highlight_Matching_Pair()

Executing: call s:Highlight_Matching_Pair()
calling <SNR>19_Highlight_Matching_Pair()

line 1:   if !exists("w:matchparen_ids")
line 2:     let w:matchparen_ids = []
line 3:   endif
line 4:   " Remove any previous match.
line 5:   call s:Remove_Matches()
calling <SNR>19_Remove_Matches()

line 1:   if exists('w:paren_hl_on') && w:paren_hl_on
line 2:     while !empty(w:matchparen_ids)
line 3:       silent! call remove(w:matchparen_ids, 0)->matchdelete()
line 4:     endwhile
line 5:     let w:paren_hl_on = 0
line 6:   endif
<SNR>19_Remove_Matches returning #0

continuing in <SNR>19_Highlight_Matching_Pair

line 6: 
line 7:   " Avoid that we remove the popup menu.
line 8:   " Return when there are no colors (looks like the cursor jumps).
line 9:   if pumvisible() || (&t_Co < 8 && !has("gui_running"))
line 10:     return
line 11:   endif
line 12: 
line 13:   " Get the character under the cursor and check if it's in 'matchpairs'.
line 14:   let c_lnum = line('.')
line 15:   let c_col = col('.')
line 16:   let before = 0
line 17: 
line 18:   let text = getline(c_lnum)
line 19:   let c_before = text->strpart(0, c_col - 1)->slice(-1)
line 20:   let c = text->strpart(c_col - 1)->slice(0, 1)
line 21:   let plist = split(&matchpairs, '.\zs[:,]')
line 22:   let i = index(plist, c)
line 23:   if i < 0
line 24:     " not found, in Insert mode try character before the cursor
line 25:     if c_col > 1 && (mode() == 'i' || mode() == 'R')
line 26:       let before = strlen(c_before)
line 27:       let c = c_before
line 28:       let i = index(plist, c)
line 29:     endif
line 30:     if i < 0
line 31:       " not found, nothing to do
line 32:       return
<SNR>19_Highlight_Matching_Pair returning #0

continuing in SafeState Autocommands for "*"

Searching for "queries/lua/highlights.scm" in runtime path
Searching for "/home/server01/.config/nvim/queries/lua/highlights.scm"
Searching for "/home/server01/.local/share/nvim/lazy/lazy.nvim/queries/lua/highlights.scm"
Searching for "/home/server01/.local/share/nvim/lazy/neodev.nvim/queries/lua/highlights.scm"
Searching for "/home/server01/.local/share/nvim/lazy/mason-lspconfig.nvim/queries/lua/highlights.scm"
Searching for "/home/server01/.local/share/nvim/lazy/mason.nvim/queries/lua/highlights.scm"
Searching for "/home/server01/.local/share/nvim/lazy/nvim-lspconfig/queries/lua/highlights.scm"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/queries/lua/highlights.scm"
Searching for "/opt/nvim-linux-x86_64/share/nvim/runtime/pack/dist/opt/matchit/queries/lua/highlights.scm"
Searching for "/opt/nvim-linux-x86_64/lib/nvim/queries/lua/highlights.scm"
Searching for "/home/server01/.local/state/nvim/lazy/readme/queries/lua/highlights.scm"
Failed to run `config` for nvim-lspconfig

/home/server01/.config/nvim/lua/plugins/lsp.lua:77: module 'cmp_nvim_lsp' not found:
^Ino field package.preload['cmp_nvim_lsp']
cache_loader: module cmp_nvim_lsp not found
cache_loader_lib: module cmp_nvim_lsp not found
^Ino file './cmp_nvim_lsp.lua'
^Ino file '/home/runner/work/neovim/neovim/.deps/usr/share/luajit-2.1/cmp_nvim_lsp.lua'
^Ino file '/usr/local/share/lua/5.1/cmp_nvim_lsp.lua'
^Ino file '/usr/local/share/lua/5.1/cmp_nvim_lsp/init.lua'
^Ino file '/home/runner/work/neovim/neovim/.deps/usr/share/lua/5.1/cmp_nvim_lsp.lua'
^Ino file '/home/runner/work/neovim/neovim/.deps/usr/share/lua/5.1/cmp_nvim_lsp/init.lua'
^Ino file './cmp_nvim_lsp.so'
^Ino file '/usr/local/lib/lua/5.1/cmp_nvim_lsp.so'
^Ino file '/home/runner/work/neovim/neovim/.deps/usr/lib/lua/5.1/cmp_nvim_lsp.so'
^Ino file '/usr/local/lib/lua/5.1/loadall.so'

# stacktrace:
  - lua/plugins/lsp.lua:77 _in_ **config**
  - init.lua:31
Executing TermResponse Autocommands for "*"
autocommand <Lua 22: vim/_defaults.lua:0>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 25: /opt/nvim-linux-x86_64/share/nvim/runtime/lua/vim/termcap.lua:38>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 28: vim/_defaults.lua:0>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 74: /opt/nvim-linux-x86_64/share/nvim/runtime/lua/vim/termcap.lua:38>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 22: vim/_defaults.lua:0>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 25: /opt/nvim-linux-x86_64/share/nvim/runtime/lua/vim/termcap.lua:38>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 28: vim/_defaults.lua:0>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 74: /opt/nvim-linux-x86_64/share/nvim/runtime/lua/vim/termcap.lua:38>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 25: /opt/nvim-linux-x86_64/share/nvim/runtime/lua/vim/termcap.lua:38>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 28: vim/_defaults.lua:0>

Executing: 
Executing TermResponse Autocommands for "*"
autocommand <Lua 74: /opt/nvim-linux-x86_64/share/nvim/runtime/lua/vim/termcap.lua:38>

Executing: 
Executing User Autocommands for "VeryLazy"
autocommand <Lua 32: ~/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/config.lua:338>

Executing: 


--- Terminal info --- {{{
&term: xterm-256color
Description: xterm with 256 colors
Aliases: xterm-256color
Boolean capabilities:
  auto_left_margin          bw         = false
  auto_right_margin         am         = true
  no_esc_ctlc               xsb        = false
  ceol_standout_glitch      xhp        = false
  eat_newline_glitch        xenl       = true
  erase_overstrike          eo         = false
  generic_type              gn         = false
  hard_copy                 hc         = false
  has_meta_key              km         = true
  has_status_line           hs         = false
  insert_null_glitch        in         = false
  memory_above              da         = false
  memory_below              db         = false
  move_insert_mode          mir        = true
  move_standout_mode        msgr       = true
  over_strike               os         = false
  status_line_esc_ok        eslok      = false
  dest_tabs_magic_smso      xt         = false
  tilde_glitch              hz         = false
  transparent_underline     ul         = false
  xon_xoff                  xon        = false
  needs_xon_xoff            nxon       = false
  prtr_silent               mc5i       = true
  hard_cursor               chts       = false
  non_rev_rmcup             nrrmc      = false
  no_pad_char               npc        = true
  non_dest_scroll_region    ndscr      = false
  can_change                ccc        = true
  back_color_erase          bce        = true
  hue_lightness_saturation  hls        = false
  col_addr_glitch           xhpa       = false
  cr_cancels_micro_mode     crxm       = false
  has_print_wheel           daisy      = false
  row_addr_glitch           xvpa       = false
  semi_auto_right_margin    sam        = false
  cpi_changes_res           cpix       = false
  lpi_changes_res           lpix       = false
  backspaces_with_bs        OTbs       = true
  crt_no_scrolling          OTns       = false
  no_correctly_working_cr   OTnc       = false
  gnu_has_meta_key          OTMT       = false
  linefeed_is_newline       OTNL       = false
  has_hardware_tabs         OTpt       = false
  return_does_clr_eol       OTxr       = false
Numeric capabilities:
  columns                   cols       = 80
  init_tabs                 it         = 8
  lines                     lines      = 24
  lines_of_memory           lm         = -1
  magic_cookie_glitch       xmc        = -1
  padding_baud_rate         pb         = -1
  virtual_terminal          vt         = -1
  width_status_line         wsl        = -1
  num_labels                nlab       = -1
  label_height              lh         = -1
  label_width               lw         = -1
  max_attributes            ma         = -1
  maximum_windows           wnum       = -1
  max_colors                colors     = 256
  max_pairs                 pairs      = 65536
  no_color_video            ncv        = -1
  buffer_capacity           bufsz      = -1
  dot_vert_spacing          spinv      = -1
  dot_horz_spacing          spinh      = -1
  max_micro_address         maddr      = -1
  max_micro_jump            mjump      = -1
  micro_col_size            mcs        = -1
  micro_line_size           mls        = -1
  number_of_pins            npins      = -1
  output_res_char           orc        = -1
  output_res_line           orl        = -1
  output_res_horz_inch      orhi       = -1
  output_res_vert_inch      orvi       = -1
  print_rate                cps        = -1
  wide_char_size            widcs      = -1
  buttons                   btns       = -1
  bit_image_entwining       bitwin     = -1
  bit_image_type            bitype     = -1
  magic_cookie_glitch_ul    OTug       = -1
  carriage_return_delay     OTdC       = -1
  new_line_delay            OTdN       = -1
  backspace_delay           OTdB       = -1
  horizontal_tab_delay      OTdT       = -1
  number_of_function_keys   OTkn       = -1
String capabilities:
  back_tab                  cbt        = ^[[Z
  bell                      bel        = ^G
  carriage_return           cr         = ^M
  change_scroll_region      csr        = ^[[%i%p1%d;%p2%dr
  clear_all_tabs            tbc        = ^[[3g
  clear_screen              clear      = ^[[H^[[2J
  clr_eol                   el         = ^[[K
  clr_eos                   ed         = ^[[J
  column_address            hpa        = ^[[%i%p1%dG
  cursor_address            cup        = ^[[%i%p1%d;%p2%dH
  cursor_down               cud1       = ^@
  cursor_home               home       = ^[[H
  cursor_invisible          civis      = ^[[?25l
  cursor_left               cub1       = ^H
  cursor_normal             cnorm      = ^[[?25h
  cursor_right              cuf1       = ^[[C
  cursor_up                 cuu1       = ^[[A
  cursor_visible            cvvis      = ^[[?12;25h
  delete_character          dch1       = ^[[P
  delete_line               dl1        = ^[[M
  enter_alt_charset_mode    smacs      = ^[(0
  enter_blink_mode          blink      = ^[[5m
  enter_bold_mode           bold       = ^[[1m
  enter_ca_mode             smcup      = ^[[?1049h^[[22;0;0t
  enter_dim_mode            dim        = ^[[2m
  enter_insert_mode         smir       = ^[[4h
  enter_secure_mode         invis      = ^[[8m
  enter_reverse_mode        rev        = ^[[7m
  enter_standout_mode       smso       = ^[[7m
  enter_underline_mode      smul       = ^[[4m
  erase_chars               ech        = ^[[%p1%dX
  exit_alt_charset_mode     rmacs      = ^[(B
  exit_attribute_mode       sgr0       = ^[(B^[[m
  exit_ca_mode              rmcup      = ^[[?1049l^[[23;0;0t
  exit_insert_mode          rmir       = ^[[4l
  exit_standout_mode        rmso       = ^[[27m
  exit_underline_mode       rmul       = ^[[24m
  flash_screen              flash      = ^[[?5h$<100/>^[[?5l
  from_status_line          fsl        = ^G
  init_2string              is2        = ^[[!p^[[?3;4l^[[4l^[>
  insert_line               il1        = ^[[L
  key_backspace             kbs        = ^?
  key_dc                    kdch1      = ^[[3~
  key_down                  kcud1      = ^[OB
  key_f1                    kf1        = ^[OP
  key_f10                   kf10       = ^[[21~
  key_f2                    kf2        = ^[OQ
  key_f3                    kf3        = ^[OR
  key_f4                    kf4        = ^[OS
  key_f5                    kf5        = ^[[15~
  key_f6                    kf6        = ^[[17~
  key_f7                    kf7        = ^[[18~
  key_f8                    kf8        = ^[[19~
  key_f9                    kf9        = ^[[20~
  key_home                  khome      = ^[OH
  key_ic                    kich1      = ^[[2~
  key_left                  kcub1      = ^[OD
  key_npage                 knp        = ^[[6~
  key_ppage                 kpp        = ^[[5~
  key_right                 kcuf1      = ^[OC
  key_sf                    kind       = ^[[1;2B
  key_sr                    kri        = ^[[1;2A
  key_up                    kcuu1      = ^[OA
  keypad_local              rmkx       = ^[[?1l^[>
  keypad_xmit               smkx       = ^[[?1h^[=
  meta_off                  rmm        = ^[[?1034l
  meta_on                   smm        = ^[[?1034h
  newline                   nel        = ^[E
  parm_dch                  dch        = ^[[%p1%dP
  parm_delete_line          dl         = ^[[%p1%dM
  parm_down_cursor          cud        = ^[[%p1%dB
  parm_ich                  ich        = ^[[%p1%d@
  parm_index                indn       = ^[[%p1%dS
  parm_insert_line          il         = ^[[%p1%dL
  parm_left_cursor          cub        = ^[[%p1%dD
  parm_right_cursor         cuf        = ^[[%p1%dC
  parm_rindex               rin        = ^[[%p1%dT
  parm_up_cursor            cuu        = ^[[%p1%dA
  print_screen              mc0        = ^[[i
  prtr_off                  mc4        = ^[[4i
  prtr_on                   mc5        = ^[[5i
  repeat_char               rep        = %p1%c^[[%p2%{1}%-%db
  reset_1string             rs1        = ^[c^[]104^G
  reset_2string             rs2        = ^[[!p^[[?3;4l^[[4l^[>
  restore_cursor            rc         = ^[8
  row_address               vpa        = ^[[%i%p1%dd
  save_cursor               sc         = ^[7
  scroll_forward            ind        = ^@
  scroll_reverse            ri         = ^[M
  set_attributes            sgr        = %?%p9%t^[(0%e^[(B%;^[[0%?%p6%t;1%;%?%p5%t;2%;%?%p2%t;4%;%?%p1%p3%|%t;7%;%?%p4%t;5%;%?%p7%t;8%;m
  set_tab                   hts        = ^[H
  tab                       ht         = 	
  to_status_line            tsl        = ^[]0;
  key_a1                    ka1        = ^[Ow
  key_a3                    ka3        = ^[Oy
  key_b2                    kb2        = ^[Ou
  key_c1                    kc1        = ^[Oq
  key_c3                    kc3        = ^[Os
  acs_chars                 acsc       = ``aaffggiijjkkllmmnnooppqqrrssttuuvvwwxxyyzz{{||}}~~
  key_btab                  kcbt       = ^[[Z
  enter_am_mode             smam       = ^[[?7h
  exit_am_mode              rmam       = ^[[?7l
  key_end                   kend       = ^[OF
  key_enter                 kent       = ^[OM
  key_sdc                   kDC        = ^[[3;2~
  key_send                  kEND       = ^[[1;2F
  key_shome                 kHOM       = ^[[1;2H
  key_sic                   kIC        = ^[[2;2~
  key_sleft                 kLFT       = ^[[1;2D
  key_snext                 kNXT       = ^[[6;2~
  key_sprevious             kPRV       = ^[[5;2~
  key_sright                kRIT       = ^[[1;2C
  key_f11                   kf11       = ^[[23~
  key_f12                   kf12       = ^[[24~
  key_f13                   kf13       = ^[[1;2P
  key_f14                   kf14       = ^[[1;2Q
  key_f15                   kf15       = ^[[1;2R
  key_f16                   kf16       = ^[[1;2S
  key_f17                   kf17       = ^[[15;2~
  key_f18                   kf18       = ^[[17;2~
  key_f19                   kf19       = ^[[18;2~
  key_f20                   kf20       = ^[[19;2~
  key_f21                   kf21       = ^[[20;2~
  key_f22                   kf22       = ^[[21;2~
  key_f23                   kf23       = ^[[23;2~
  key_f24                   kf24       = ^[[24;2~
  key_f25                   kf25       = ^[[1;5P
  key_f26                   kf26       = ^[[1;5Q
  key_f27                   kf27       = ^[[1;5R
  key_f28                   kf28       = ^[[1;5S
  key_f29                   kf29       = ^[[15;5~
  key_f30                   kf30       = ^[[17;5~
  key_f31                   kf31       = ^[[18;5~
  key_f32                   kf32       = ^[[19;5~
  key_f33                   kf33       = ^[[20;5~
  key_f34                   kf34       = ^[[21;5~
  key_f35                   kf35       = ^[[23;5~
  key_f36                   kf36       = ^[[24;5~
  key_f37                   kf37       = ^[[1;6P
  key_f38                   kf38       = ^[[1;6Q
  key_f39                   kf39       = ^[[1;6R
  key_f40                   kf40       = ^[[1;6S
  key_f41                   kf41       = ^[[15;6~
  key_f42                   kf42       = ^[[17;6~
  key_f43                   kf43       = ^[[18;6~
  key_f44                   kf44       = ^[[19;6~
  key_f45                   kf45       = ^[[20;6~
  key_f46                   kf46       = ^[[21;6~
  key_f47                   kf47       = ^[[23;6~
  key_f48                   kf48       = ^[[24;6~
  key_f49                   kf49       = ^[[1;3P
  key_f50                   kf50       = ^[[1;3Q
  key_f51                   kf51       = ^[[1;3R
  key_f52                   kf52       = ^[[1;3S
  key_f53                   kf53       = ^[[15;3~
  key_f54                   kf54       = ^[[17;3~
  key_f55                   kf55       = ^[[18;3~
  key_f56                   kf56       = ^[[19;3~
  key_f57                   kf57       = ^[[20;3~
  key_f58                   kf58       = ^[[21;3~
  key_f59                   kf59       = ^[[23;3~
  key_f60                   kf60       = ^[[24;3~
  key_f61                   kf61       = ^[[1;4P
  key_f62                   kf62       = ^[[1;4Q
  key_f63                   kf63       = ^[[1;4R
  clr_bol                   el1        = ^[[1K
  clear_margins             mgc        = ^[[?69l
  user6                     u6         = ^[[%i%d;%dR
  user7                     u7         = ^[[6n
  user8                     u8         = ^[[?%[;0123456789]c
  user9                     u9         = ^[[c
  orig_pair                 op         = ^[[39;49m
  orig_colors               oc         = ^[]104^G
  initialize_color          initc      = ^[]4;%p1%d;rgb:%p2%{255}%*%{1000}%/%2.2X/%p3%{255}%*%{1000}%/%2.2X/%p4%{255}%*%{1000}%/%2.2X^[\
  enter_italics_mode        sitm       = ^[[3m
  exit_italics_mode         ritm       = ^[[23m
  key_mouse                 kmous      = ^[[<
  set_a_foreground          setaf      = ^[[%?%p1%{8}%<%t3%p1%d%e%p1%{16}%<%t9%p1%{8}%-%d%e38;5;%p1%d%;m
  set_a_background          setab      = ^[[%?%p1%{8}%<%t4%p1%d%e%p1%{16}%<%t10%p1%{8}%-%d%e48;5;%p1%d%;m
  set_tb_margin             smgtb      = ^[[%i%p1%d;%p2%dr
  memory_lock               meml       = ^[l
  memory_unlock             memu       = ^[m
Extended boolean capabilities:
  AX                        = true
  XT                        = true
Extended string capabilities:
  Cr                        = ^[]112^G
  Cs                        = ^[]12;%p1%s^G
  E3                        = ^[[3J
  Ms                        = ^[]52;%p1%s;%p2%s^G
  Se                        = ^[[2 q
  Ss                        = ^[[%p1%d q
  XM                        = ^[[?1006;1000%?%p1%{1}%=%th%el%;
  kDC3                      = ^[[3;3~
  kDC4                      = ^[[3;4~
  kDC5                      = ^[[3;5~
  kDC6                      = ^[[3;6~
  kDC7                      = ^[[3;7~
  kDN                       = ^[[1;2B
  kDN3                      = ^[[1;3B
  kDN4                      = ^[[1;4B
  kDN5                      = ^[[1;5B
  kDN6                      = ^[[1;6B
  kDN7                      = ^[[1;7B
  kEND3                     = ^[[1;3F
  kEND4                     = ^[[1;4F
  kEND5                     = ^[[1;5F
  kEND6                     = ^[[1;6F
  kEND7                     = ^[[1;7F
  kHOM3                     = ^[[1;3H
  kHOM4                     = ^[[1;4H
  kHOM5                     = ^[[1;5H
  kHOM6                     = ^[[1;6H
  kHOM7                     = ^[[1;7H
  kIC3                      = ^[[2;3~
  kIC4                      = ^[[2;4~
  kIC5                      = ^[[2;5~
  kIC6                      = ^[[2;6~
  kIC7                      = ^[[2;7~
  kLFT3                     = ^[[1;3D
  kLFT4                     = ^[[1;4D
  kLFT5                     = ^[[1;5D
  kLFT6                     = ^[[1;6D
  kLFT7                     = ^[[1;7D
  kNXT3                     = ^[[6;3~
  kNXT4                     = ^[[6;4~
  kNXT5                     = ^[[6;5~
  kNXT6                     = ^[[6;6~
  kNXT7                     = ^[[6;7~
  kPRV3                     = ^[[5;3~
  kPRV4                     = ^[[5;4~
  kPRV5                     = ^[[5;5~
  kPRV6                     = ^[[5;6~
  kPRV7                     = ^[[5;7~
  kRIT3                     = ^[[1;3C
  kRIT4                     = ^[[1;4C
  kRIT5                     = ^[[1;5C
  kRIT6                     = ^[[1;6C
  kRIT7                     = ^[[1;7C
  kUP                       = ^[[1;2A
  kUP3                      = ^[[1;3A
  kUP4                      = ^[[1;4A
  kUP5                      = ^[[1;5A
  kUP6                      = ^[[1;6A
  kUP7                      = ^[[1;7A
  ka2                       = ^[Ox
  kb1                       = ^[Ot
  kb3                       = ^[Ov
  kc2                       = ^[Or
  kp5                       = ^[OE
  kpADD                     = ^[Ok
  kpCMA                     = ^[Ol
  kpDIV                     = ^[Oo
  kpDOT                     = ^[On
  kpMUL                     = ^[Oj
  kpSUB                     = ^[Om
  kpZRO                     = ^[Op
  rmxx                      = ^[[29m
  smxx                      = ^[[9m
  xm                        = ^[[<%i%p3%d;%p1%d;%p2%d;%?%p4%tM%em%;
  ext.resize_screen         = ^[[8;%p1%d;%p2%dt
  ext.reset_scroll_region   = ^[[r
  ext.enter_altfont_mode    = ^[[11m
  setrgbf                   = ^[[38;2;%p1%d;%p2%d;%p3%dm
  setrgbb                   = ^[[48;2;%p1%d;%p2%d;%p3%dm
  ext.save_title            = ^[[22;0t
  ext.restore_title         = ^[[23;0t
  ext.set_title             = ^[]0;%p2%s^G
  ext.enable_lr_margin      = ^[[?69h
  ext.disable_lr_margin     = ^[[?69l
  ext.enable_bpaste         = ^[[?2004h
  ext.disable_bpaste        = ^[[?2004l
  ext.enable_focus          = ^[[?1004h
  ext.disable_focus         = ^[[?1004l
  ext.enable_mouse          = ^[[?1002h^[[?1006h
  ext.disable_mouse         = ^[[?1002l^[[?1006l
  ext.enable_mouse_move     = ^[[?1003h
  ext.disable_mouse_move    = ^[[?1003l
}}}
recording @q


Executing: q!
Executing VimLeavePre Autocommands for "*"
autocommand <Lua 54: ~/.local/share/nvim/lazy/mason.nvim/lua/mason/init.lua:9>

Executing: 
autocommand <Lua 35: /opt/nvim-linux-x86_64/share/nvim/runtime/lua/vim/lsp.lua:797>

Executing: 
Writing ShaDa file "/home/server01/.local/state/nvim/shada/main.shada"