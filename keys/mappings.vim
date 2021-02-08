" Defining the leader key
let mapleader = " "
nnoremap <Space> <Nop>
" let maplocalleader = " "

" workspace like bindings for buffers
" nnoremap <silent> <leader>1 :silent buffer 2<CR>
" nnoremap <silent> <leader>2 :silent buffer 3<CR>
" nnoremap <silent> <leader>3 :silent buffer 4<CR>
" nnoremap <silent> <leader>4 :silent buffer 5<CR>
" nnoremap <silent> <leader>5 :silent buffer 6<CR>
" nnoremap <silent> <leader>6 :silent buffer 7<CR>
" nnoremap <silent> <leader>7 :silent buffer 8<CR>
" nnoremap <silent> <leader>8 :silent buffer 9<CR>
" nnoremap <silent> <leader>9 :silent buffer 10<CR>

" type :nmap, :vmap, :imap to see all loaded keybinds

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"nnoremap <silent> <M-j>    :silent resize -2<CR>
"nnoremap <silent> <M-k>    :silent resize +2<CR>
"nnoremap <silent> <M-h>    :silent vertical resize -2<CR>
"nnoremap <silent> <M-l>    :silent vertical resize +2<CR>

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0
"Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

let g:which_key_map = {}
let g:which_key_sep = '→'


" let g:which_key_map.1 = 'which_key_ignore'
" let g:which_key_map.2 = 'which_key_ignore'
" let g:which_key_map.3 = 'which_key_ignore'
" let g:which_key_map.4 = 'which_key_ignore'
" let g:which_key_map.5 = 'which_key_ignore'
" let g:which_key_map.6 = 'which_key_ignore'
" let g:which_key_map.7 = 'which_key_ignore'
" let g:which_key_map.8 = 'which_key_ignore'
" let g:which_key_map.9 = 'which_key_ignore'

" Single key mappings
"let g:which_key_map[''] = [ 'buffer 1'                                 , 'comment' ]
let g:which_key_map['.'] = [ ':e $MYVIMRC'                                     , 'open init' ]
let g:which_key_map[';'] = [ ':Commands'                                       , 'commands' ]
let g:which_key_map['='] = [ '<C-W>='                                          , 'balance windows' ]
let g:which_key_map['e'] = [ ':CocCommand explorer --toggle --sources=file+'   , 'explorer' ]
let g:which_key_map['h'] = [ '<C-W>s'                                          , 'split below']
let g:which_key_map['n'] = [ ':let @/ = ""'                                    , 'no highlight' ]
let g:which_key_map['o'] = [ ':RnvimrToggle'                                   , 'open' ]
let g:which_key_map['p'] = [ ':Files'                                          , 'search files' ]
let g:which_key_map['q'] = [ '<Plug>(coc-fix-current)'                         , 'quickfix' ]
let g:which_key_map['v'] = [ '<C-W>v'                                          , 'split right']
let g:which_key_map['/'] = [ ':call Comment()'                                 , 'comment' ]


" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ 'f' : ['bfirst'                 , 'first-buffer'],
      \ 'l' : ['blast'                  , 'last buffer'],
      \ 'n' : ['bnext'                  , 'next-buffer'],
      \ 'p' : ['bprevious'              , 'previous-buffer'],
      \ 'd' : ['bdelete'              , 'delete buffer'],
      \ 'b' : ['Buffers'                , 'fzf-buffer'],
      \ }
" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'code action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'O' : [':CocList outline'                    , 'search outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-references)'              , 'references'],
      \ 'R' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 'S' : [':CocList snippets'                   , 'snippets'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }

" g is for git
let g:which_key_map.g = {
     \ 'name' : '+git' ,
     \ 's' : [':Gstatus'              , 'Git Status'],
     \ 'a' : [':Git add .'            , 'add all'],
     \ 'c' : [':Git commit'           , 'commit'],
     \ 'p' : [':Git push'             , 'push'],
     \ 'P' : [':Git pull'             , 'pull'],
     \ 'j' : [':diffget //3'          , 'merge from right']        ,
     \ 'f' : [':diffget //2'          , 'merge from left']        ,
     \ }

" S is for session
let g:which_key_map.S = {
      \ 'name' : '+Session' ,
      \ 'c' : [':SClose'          , 'Close Session']  ,
      \ 'd' : [':SDelete'         , 'Delete Session'] ,
      \ 'l' : [':SLoad'           , 'Load Session']     ,
      \ 's' : [':Startify'        , 'Start Page']     ,
      \ 'S' : [':SSave'           , 'Save Session']   ,
      \ }

" w is for wiki (vimwiki)
let g:which_key_map.w = {
       \ 'name' : '+wiki' ,
       \ 'w' : ['<Plug>VimwikiIndex'                              , 'index'],
       \ 'f' : ['<Plug>VimwikiFollowLink'                              , 'follow or create'],
       \ 's' : ['<Plug>VimwikiSplitLink'                              , 'follow split'],
       \ 'v' : ['<Plug>VimwikiVSplitLink'                              , 'follow vsplit'],
       \ 'b' : ['<Plug>VimwikiGoBackLink'                              , 'go back'],
       \ 'n' : ['<Plug>VimwikiGoto'                              , 'open or create new'],
       \ 'd' : ['<Plug>VimwikiDeleteFile'                              , 'delete'],
       \ 'r' : ['<Plug>VimwikiRenameFile'                              , 'rename'],
       \ }


"To remap commands that begin with <Plug>, you should do the following:
":{mode}map {map} <Plug>{command}
"<Plug>Vimwiki2HTML
"<Plug>Vimwiki2HTMLBrowse
"<Plug>VimwikiDiaryGenerateLinks
"<Plug>VimwikiFollowLink
"<Plug>VimwikiSplitLink
"<Plug>VimwikiVSplitLink
"<Plug>VimwikiTabnewLink
"<Plug>VimwikiGoBackLink
"<Plug>VimwikiNextLink
"<Plug>VimwikiPrevLink
"<Plug>VimwikiGoto
"<Plug>VimwikiDeleteFile
"<Plug>VimwikiRenameFile
"<Plug>VimwikiAddHeaderLevel
"<Plug>VimwikiRemoveHeaderLevel
"<Plug>VimwikiGoToPrevHeader
"<Plug>VimwikiGoToNextHeader
"<Plug>VimwikiGoToPrevSiblingHeader
"<Plug>VimwikiGoToNextSiblingHeader
"<Plug>VimwikiGoToParentHeader
"<Plug>VimwikiNormalizeLink
"<Plug>VimwikiNormalizeLinkVisual
"<Plug>VimwikiToggleListItem
"<Plug>VimwikiNextTask
"<Plug>VimwikiRemoveSingleCB
"<Plug>VimwikiRemoveCBInList
"<Plug>VimwikiIncrementListItem
"<Plug>VimwikiIncreaseLvlSingleItem
"<Plug>VimwikiIncreaseLvlWholeItem
"<Plug>VimwikiDecreaseLvlSingleItem
"<Plug>VimwikiDecreaseLvlWholeItem
"<Plug>VimwikiRenumberList
"<Plug>VimwikiRenumberAllLists
"<Plug>VimwikiToggleRejectedListItem
" <Plug>VimwikiTableAlignQ`
" <Plug>VimwikiTableAlignW`
" <Plug>VimwikiTableAlignQ1`
" <Plug>VimwikiTableAlignW1`
" <Plug>VimwikiTableMoveColumnLeft`
" <Plug>VimwikiTableMoveColumnRight`
" <Plug>VimwikiDiaryPrevDay`
" <Plug>VimwikiDiaryNextDay`
" <Plug>VimwikiIncreaseLvlSingleItem`
" <Plug>VimwikiDecreaseLvlSingleItem`
" <Plug>VimwikiListNextSymbol`
" <Plug>VimwikiListPrevSymbol`
" <Plug>VimwikiListToggle`

"For commands that do not begin with <Plug>, do:
":{mode}noremap {map} {command}
"Remap command: `:VimwikiChangeSymbolTo *<CR>`
"Remap command: `:VimwikiChangeSymbolTo #<CR>`
"Remap command: `:VimwikiChangeSymbolInListTo #<CR>`
"Remap command:  `:VimwikiChangeSymbolTo -<CR>`
"Remap command: `:VimwikiChangeSymbolInListTo -<CR>`
"Remap command: `:VimwikiChangeSymbolTo 1.<CR>`
"Remap command: `:VimwikiChangeSymbolInListTo 1.<CR>`
"Remap command: `:VimwikiChangeSymbolInListTo a)<CR>`
"Remap command: `:VimwikiChangeSymbolTo A)<CR>`
"Remap command: `:VimwikiChangeSymbolInListTo A)<CR>`
"Remap command: `:VimwikiChangeSymbolTo i)<CR>`
"Remap command: `:VimwikiChangeSymbolInListTo i)<CR>`
"Remap command: `:VimwikiChangeSymbolInListTo I)<CR>`

call which_key#register('<Space>', "g:which_key_map")


