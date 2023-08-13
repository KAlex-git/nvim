
-----------------------------------------------------------
---- TODO split new window and open files-shortcuts {{{
-----------------------------------------------------------
---- Load command shortcuts generated from bm-dirs and bm-files via shortcuts script.
---- Here leader is ";".
---- So ":vs ;cfz" will expand into ":vs /home/<user>/.config/zsh/.zshrc"
---- if typed fast without the timeout.
-----------------------------------------------------------
vim.cmd [[
  augroup !shortcuts
    au!
    au BufWritePost, bm-files,bm-dirs, !shortcuts
    source ~/.config/nvim/shortcuts.vim
  augroup END

	autocmd BufRead,BufNewFile Xresources,Xdefaults,xresources,xdefaults set filetype=xdefaults
	autocmd BufWritePost Xresources,Xdefaults,xresources,xdefaults !xrdb %
]]
--}}}
-----------------------------------------------------------
---- TODO file detect {{{
-----------------------------------------------------------
vim.cmd([[
augroup filetypedetect
    au! BufRead,BufNewFile *.* setfiletype sh
    au! BufRead,BufNewFile text setfiletype ini
augroup END
]])
--}}}
-----------------------------------------------------------
---- TODO file read dwmblocks{{{
-----------------------------------------------------------
vim.cmd([[
autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
]])
--}}}

vim.cmd([[set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz]])
-----------------------------------------------------------
---- TODO Menu choice Encoding {{{
-----------------------------------------------------------
vim.cmd([[
menu Encoding.koi8-r :e ++enc=koi8-r ++ff=unix<CR>
menu Encoding.windows-1251 :e ++enc=cp1251 ++ff=dos<CR>
menu Encoding.cp866 :e ++enc=cp866 ++ff=dos<CR>
menu Encoding.utf-8 :e ++enc=utf8<CR>
menu Encoding.koi8-u :e ++enc=koi8-u ++ff=unix<CR>
map <F8> :emenu Encoding.<TAB>
]])
--}}}

-- Save file as sudo on files that require root permission"
vim.cmd("cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!")


-- Abbreviature
vim.cmd ([[
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
]])



-- " vim: set ts=8 sts=4 sw=4 et :
-- vim: foldmethod=marker 
--
--
--
