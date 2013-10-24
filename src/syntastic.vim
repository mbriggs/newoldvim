let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=0
let g:syntastic_auto_loc_list=0
let g:syntastic_quiet_warnings=1
let g:syntastic_javascript_checker = 'jshint'
au FileType javascript let g:syntastic_quiet_warnings=0
au BufRead,BufNewFile *.hbs let g:syntastic_enable_signs=0
let g:syntastic_javascript_checkers = ['jslint']
