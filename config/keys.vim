"sätter in datum automatiskt
nmap <F3> i<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" FZF key bindings
  nnoremap <C-f> :FZF<CR>
  let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-i': 'split',
    \ 'ctrl-v': 'vsplit' }

nmap <F7> i \documentclass{article}<CR>\usepackage[utf8]{inputenc}<CR><CR>\title{Titel}<CR>\author{Christoffer Fjälborg Rinaldo}<CR>\date{<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>}<CR><CR>\begin{document}<CR><CR>\maketitle<CR><CR>\section{First section}<CR><CR>\end{document}<Esc>

map <F9> :Goyo <bar> :Limelight <CR>

map <SPACE> <leader>


