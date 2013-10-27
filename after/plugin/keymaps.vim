" tab indents (insert mode covered by tabindent)
nnoremap <tab> ==
vnoremap <tab> ==

inoremap <d-bs> <esc>ddi
inoremap <d-cr> <esc>o
inoremap <d-s-cr> <esc>O

" alt-tab
nmap ,, <c-^>

" close all other splits
nmap - :only<cr>

" CTags
nmap <C-F5> :!ctags --extra=+f -R *<CR><CR>
nmap <C-\> :tnext<CR>

" jump to matching pair
nnoremap <space><space> %

" jumplist
nmap <left> g;
nmap <right> g,

"c-backspace to delete word
imap <C-BS> <C-W>
cmap <C-BS> <C-W>

" Fast search pair.
nnoremap [Space]p %
xnoremap [Space]p %

"" Hit return to clear a search
nnoremap <silent> <expr> <CR> &bt == "" ? ":nohlsearch<CR>" : "\<CR>"

"" %% for current dir
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" kill all whitespace
command! KillWhitespace :normal :%s/ *$//g<cr><c-o><cr>

" set working dir
command! SetDir :cd %:p:h

" front and back of a line
nnoremap <s-h> ^
nnoremap <s-l> $

"new line, but stay in command mode
inoremap <c-return> mpo<esc>`p

"new line, but stay at current position
inoremap <c-return> <esc><c-return>a

"toggle spellcheck
nmap <f4> :set spell!<cr>

" why isn't it this by default??
nnoremap <s-y> y$

"resize window
nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> _ :exe "resize " . (winheight(0) * 2/3)<CR>

" ,so to source current file
nmap <Leader>so :so %<cr>

"\  goes back a jump
nnoremap \ ,

if has("gui") && has("gui_macvim")
  "cycle split"
  nmap <d-j> <c-w><c-w>

  " quickfix nav
  nmap <D-left> :cp<cr>
  nmap <D-right> :cn<cr>
endif

if has("gui") && has("gui_gtk2")
  " tabs
  nmap <a-t> :tabe<cr>
  nmap <a-}> :tabn<cr>
  nmap <a-{> :tabp<cr>

  " ctrl-/ to toggle comment
  nmap <a-/> ,c<space>
  vmap <a-/> ,c<space>

  " select all
  nmap <silent> <a-a> GVgg

  " cycle active split
  nmap <a-j> <c-w><c-w>

  " system copy/paste
  vmap <a-c> "+y
  nmap <a-v> "+p
  nmap <a-x> "+d
  imap <a-v> <c-o><a-v>

  " quickfix nav
  nmap <a-left> :cp<cr>
  nmap <a-right> :cn<cr>
endif
