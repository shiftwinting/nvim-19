"for entering "writing mode"
"nnoremap <F9> :Goyo <bar> setlocal spell! <bar> setlocal wrap linebreak<CR>

let g:focused = 0
function! Writingmode()
    if g:focused == 0
        :Goyo 
        :setlocal spell! 
        :setlocal wrap linebreak 
        let g:focused = 1
    else
        :Goyo 
        :setlocal nospell! 
        :setlocal nowrap nolinebreak 
        let g:focued = 0
    endif
endfunction

command Writingmode call Writingmode()
