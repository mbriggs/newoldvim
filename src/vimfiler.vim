let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0
" E edits from the local dir
nmap E :VimFiler <C-R>=expand("%:p:h") . "/"<CR><CR>
autocmd BufReadPost vimfiler set bufhidden=delete
