nnoremap [Space]% :<C-u>call <SID>copy_path()<CR>
function! s:copy_path()
  let @*=expand('%')
  let @"=expand('%')
  let @+=expand('%')
endfunction
