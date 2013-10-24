nnoremap <c-s> ysiw
let g:surround_custom_mapping = {}
let g:surround_custom_mapping.ruby = {
            \ '-':  "<% \r %>",
            \ '=':  "<%= \r %>",
            \ '%':  "%|\r|",
            \ 'w':  "%w(\r)",
            \ '#':  "#{\r}",
            \ }
let g:surround_custom_mapping.javascript = {
            \ 'f':  "function(){ \r }"
            \ }
