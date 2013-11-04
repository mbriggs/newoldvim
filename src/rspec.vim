let g:rspec_command = "compiler rspec | set makeprg=zeus | Make rspec {spec}"
au BufRead,BufNewFile *_spec.rb call s:RSpecSetup()

function! s:RSpecSetup()
  nnoremap <Leader>tf :call RunCurrentSpecFile()<CR>
  nnoremap <Leader>tt :call RunNearestSpec()<CR>
  nnoremap <Leader>tl :call RunLastSpec()<CR>
endfunction
