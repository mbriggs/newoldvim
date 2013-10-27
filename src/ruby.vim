let g:rspec_command = "Dispatch zeus spec {spec}"
autocmd FileType ruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby let g:rubycomplete_buffer_loading=1
autocmd FileType ruby let g:rubycomplete_classes_in_global=1

function! AddInstanceVariablesForArguments()
  let @a = ""
  execute 'normal! "ayib'
  if @a == ""
    " handle method definitions without parenthsis
    execute 'normal! ^2wv$h"ay'
  end

  let argsstr = @a
  let argsstr = substitute(argsstr, "^def \k*", "", "g")
  let argsstr = substitute(argsstr, " ", "", "g")

  let argslist = split(argsstr, ",")

  let l = line('.')

  let argslist = map(argslist, '"@" . argslist[v:key] . " = " . argslist[v:key]')

  call append(l, argslist)

  execute "normal jV" . len(argslist) . "j="
endfunction

autocmd FileType ruby,eruby
      \ nnoremap <leader>rg :<c-u>call AddInstanceVariablesForArguments()<cr>
