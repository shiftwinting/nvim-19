Vim�UnDo� >F\fQ{��������t�S�������!k�   �   X       \ 'v' : ['<Plug>VimwikiVSplitLink'                              , 'follow slit'],   �   Q      9       9   9   9    `�v    _�                            ����                                                                                                                                                                                                                                                                                                                                                          `�    �         �      0nnoremap <silent> <leader>2 :silent buffer 3<CR>   0nnoremap <silent> <leader>3 :silent buffer 4<CR>   0nnoremap <silent> <leader>4 :silent buffer 5<CR>   0nnoremap <silent> <leader>5 :silent buffer 6<CR>   0nnoremap <silent> <leader>6 :silent buffer 7<CR>   0nnoremap <silent> <leader>7 :silent buffer 8<CR>   0nnoremap <silent> <leader>8 :silent buffer 9<CR>   1nnoremap <silent> <leader>9 :silent buffer 10<CR>�         �      0nnoremap <silent> <leader>1 :silent buffer 2<CR>5�_�                    0        ����                                                                                                                                                                                                                                                                                                                            0           8                   `�    �   0   9   �      *let g:which_key_map.2 = 'which_key_ignore'   *let g:which_key_map.3 = 'which_key_ignore'   *let g:which_key_map.4 = 'which_key_ignore'   *let g:which_key_map.5 = 'which_key_ignore'   *let g:which_key_map.6 = 'which_key_ignore'   *let g:which_key_map.7 = 'which_key_ignore'   *let g:which_key_map.8 = 'which_key_ignore'   *let g:which_key_map.9 = 'which_key_ignore'�   /   1   �      *let g:which_key_map.1 = 'which_key_ignore'5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `6�     �               �   " Defining the leader key   let mapleader = " "   nnoremap <Space> <Nop>   " let maplocalleader = " "       %" workspace like bindings for buffers   2" nnoremap <silent> <leader>1 :silent buffer 2<CR>   2" nnoremap <silent> <leader>2 :silent buffer 3<CR>   2" nnoremap <silent> <leader>3 :silent buffer 4<CR>   2" nnoremap <silent> <leader>4 :silent buffer 5<CR>   2" nnoremap <silent> <leader>5 :silent buffer 6<CR>   2" nnoremap <silent> <leader>6 :silent buffer 7<CR>   2" nnoremap <silent> <leader>7 :silent buffer 8<CR>   2" nnoremap <silent> <leader>8 :silent buffer 9<CR>   3" nnoremap <silent> <leader>9 :silent buffer 10<CR>       5" type :nmap, :vmap, :imap to see all loaded keybinds   " Better tabbing   vnoremap < <gv   vnoremap > >gv       " Better window navigation   nnoremap <C-h> <C-w>h   nnoremap <C-j> <C-w>j   nnoremap <C-k> <C-w>k   nnoremap <C-l> <C-w>l       1"nnoremap <silent> <M-j>    :silent resize -2<CR>   1"nnoremap <silent> <M-k>    :silent resize +2<CR>   :"nnoremap <silent> <M-h>    :silent vertical resize -2<CR>   :"nnoremap <silent> <M-l>    :silent vertical resize +2<CR>       " Map leader to which_key   Gnnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>   Mvnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>   $let g:which_key_use_floating_win = 0   let g:which_key_max_size = 0   "Hide status line   autocmd! FileType which_key   ?autocmd  FileType which_key set laststatus=0 noshowmode noruler   @  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler       ?let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}       let g:which_key_map = {}   let g:which_key_sep = '→'       ," let g:which_key_map.1 = 'which_key_ignore'   ," let g:which_key_map.2 = 'which_key_ignore'   ," let g:which_key_map.3 = 'which_key_ignore'   ," let g:which_key_map.4 = 'which_key_ignore'   ," let g:which_key_map.5 = 'which_key_ignore'   ," let g:which_key_map.6 = 'which_key_ignore'   ," let g:which_key_map.7 = 'which_key_ignore'   ," let g:which_key_map.8 = 'which_key_ignore'   ," let g:which_key_map.9 = 'which_key_ignore'       " Single key mappings   U"let g:which_key_map[''] = [ 'buffer 1'                                 , 'comment' ]   ^let g:which_key_map['.'] = [ ':e $MYVIMRC'                                     , 'open init' ]   ]let g:which_key_map[';'] = [ ':Commands'                                       , 'commands' ]   dlet g:which_key_map['='] = [ '<C-W>='                                          , 'balance windows' ]   ]let g:which_key_map['e'] = [ ':CocCommand explorer --toggle --sources=file+'   , 'explorer' ]   _let g:which_key_map['h'] = [ '<C-W>s'                                          , 'split below']   alet g:which_key_map['n'] = [ ':let @/ = ""'                                    , 'no highlight' ]   Ylet g:which_key_map['o'] = [ ':RnvimrToggle'                                   , 'open' ]   alet g:which_key_map['p'] = [ ':Files'                                          , 'search files' ]   ]let g:which_key_map['q'] = [ '<Plug>(coc-fix-current)'                         , 'quickfix' ]   _let g:which_key_map['v'] = [ '<C-W>v'                                          , 'split right']       " b is for buffer   let g:which_key_map.b = {         \ 'name' : '+buffer' ,   :      \ 'f' : ['bfirst'                 , 'first-buffer'],   9      \ 'l' : ['blast'                  , 'last buffer'],   9      \ 'n' : ['bnext'                  , 'next-buffer'],   =      \ 'p' : ['bprevious'              , 'previous-buffer'],   8      \ 'b' : ['Buffers'                , 'fzf-buffer'],   	      \ }   #" l is for language server protocol   let g:which_key_map.l = {         \ 'name' : '+lsp' ,   A      \ '.' : [':CocConfig'                          , 'config'],   C      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],   F      \ 'a' : ['<Plug>(coc-codeaction)'              , 'code action'],   J      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],   F      \ 'b' : [':CocNext'                            , 'next action'],   F      \ 'B' : [':CocPrev'                            , 'prev action'],   C      \ 'c' : [':CocList commands'                   , 'commands'],   E      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],   F      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],   E      \ 'e' : [':CocList extensions'                 , 'extensions'],   J      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],   A      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],   ?      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],   I      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],   F      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],   E      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],   D      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],   J      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],   E      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],   I      \ 'O' : [':CocList outline'                    , 'search outline'],   J      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],   E      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],   C      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],   E      \ 'r' : ['<Plug>(coc-references)'              , 'references'],   A      \ 'R' : ['<Plug>(coc-rename)'                  , 'rename'],   E      \ 's' : [':CocList -I symbols'                 , 'references'],   C      \ 'S' : [':CocList snippets'                   , 'snippets'],   J      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],   F      \ 'u' : [':CocListResume'                      , 'resume list'],   E      \ 'U' : [':CocUpdate'                          , 'update CoC'],   F      \ 'z' : [':CocDisable'                         , 'disable CoC'],   E      \ 'Z' : [':CocEnable'                          , 'enable CoC'],   	      \ }       " g is for git   let g:which_key_map.g = {        \ 'name' : '+git' ,   6     \ 's' : [':Gstatus'              , 'Git Status'],   3     \ 'a' : [':Git add .'            , 'add all'],   2     \ 'c' : [':Git commit'           , 'commit'],   0     \ 'p' : [':Git push'             , 'push'],   0     \ 'P' : [':Git pull'             , 'pull'],   D     \ 'j' : [':diffget //3'          , 'merge from right']        ,   C     \ 'f' : [':diffget //2'          , 'merge from left']        ,        \ }       " S is for session   let g:which_key_map.S = {         \ 'name' : '+Session' ,   7      \ 'c' : [':SClose'          , 'Close Session']  ,   7      \ 'd' : [':SDelete'         , 'Delete Session'] ,   9      \ 'l' : [':SLoad'           , 'Load Session']     ,   7      \ 's' : [':Startify'        , 'Start Page']     ,   7      \ 'S' : [':SSave'           , 'Save Session']   ,   	      \ }       " w is for wiki (vimwiki)   let g:which_key_map.w = {          \ 'name' : '+wiki' ,   M       \ 'w' : ['<Plug>VimwikiIndex'                              , 'index'],   J       \ 'n' : ['<plug>(wiki-open)'                              , 'open']   
       \ }           G"To remap commands that begin with <Plug>, you should do the following:   !":{mode}map {map} <Plug>{command}   "<Plug>Vimwiki2HTML   "<Plug>Vimwiki2HTMLBrowse    "<Plug>VimwikiDiaryGenerateLinks   "<Plug>VimwikiFollowLink   "<Plug>VimwikiSplitLink   "<Plug>VimwikiVSplitLink   "<Plug>VimwikiTabnewLink   "<Plug>VimwikiGoBackLink   "<Plug>VimwikiNextLink   "<Plug>VimwikiPrevLink   "<Plug>VimwikiGoto   "<Plug>VimwikiDeleteFile   "<Plug>VimwikiRenameFile   "<Plug>VimwikiAddHeaderLevel   "<Plug>VimwikiRemoveHeaderLevel   "<Plug>VimwikiGoToPrevHeader   "<Plug>VimwikiGoToNextHeader   #"<Plug>VimwikiGoToPrevSiblingHeader   #"<Plug>VimwikiGoToNextSiblingHeader   "<Plug>VimwikiGoToParentHeader   "<Plug>VimwikiNormalizeLink   !"<Plug>VimwikiNormalizeLinkVisual   "<Plug>VimwikiToggleListItem   "<Plug>VimwikiNextTask   "<Plug>VimwikiRemoveSingleCB   "<Plug>VimwikiRemoveCBInList   "<Plug>VimwikiIncrementListItem   #"<Plug>VimwikiIncreaseLvlSingleItem   ""<Plug>VimwikiIncreaseLvlWholeItem   #"<Plug>VimwikiDecreaseLvlSingleItem   ""<Plug>VimwikiDecreaseLvlWholeItem   "<Plug>VimwikiRenumberList   "<Plug>VimwikiRenumberAllLists   $"<Plug>VimwikiToggleRejectedListItem   " <Plug>VimwikiTableAlignQ`   " <Plug>VimwikiTableAlignW`   " <Plug>VimwikiTableAlignQ1`   " <Plug>VimwikiTableAlignW1`   #" <Plug>VimwikiTableMoveColumnLeft`   $" <Plug>VimwikiTableMoveColumnRight`   " <Plug>VimwikiDiaryPrevDay`   " <Plug>VimwikiDiaryNextDay`   %" <Plug>VimwikiIncreaseLvlSingleItem`   %" <Plug>VimwikiDecreaseLvlSingleItem`   " <Plug>VimwikiListNextSymbol`   " <Plug>VimwikiListPrevSymbol`   " <Plug>VimwikiListToggle`       0"For commands that do not begin with <Plug>, do:   ":{mode}noremap {map} {command}   ."Remap command: `:VimwikiChangeSymbolTo *<CR>`   ."Remap command: `:VimwikiChangeSymbolTo #<CR>`   4"Remap command: `:VimwikiChangeSymbolInListTo #<CR>`   /"Remap command:  `:VimwikiChangeSymbolTo -<CR>`   4"Remap command: `:VimwikiChangeSymbolInListTo -<CR>`   /"Remap command: `:VimwikiChangeSymbolTo 1.<CR>`   5"Remap command: `:VimwikiChangeSymbolInListTo 1.<CR>`   5"Remap command: `:VimwikiChangeSymbolInListTo a)<CR>`   /"Remap command: `:VimwikiChangeSymbolTo A)<CR>`   5"Remap command: `:VimwikiChangeSymbolInListTo A)<CR>`   /"Remap command: `:VimwikiChangeSymbolTo i)<CR>`   5"Remap command: `:VimwikiChangeSymbolInListTo i)<CR>`   5"Remap command: `:VimwikiChangeSymbolInListTo I)<CR>`                   5call which_key#register('<Space>', "g:which_key_map")        5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             `?�     �   �   �   �      J       \ 'n' : ['<plug>(wiki-open)'                              , 'open']5�_�                    �   "    ����                                                                                                                                                                                                                                                                                                                                                             `?�     �   �   �   �      J       \ 'n' : ['<Plug>(wiki-open)'                              , 'open']5�_�                    �   J    ����                                                                                                                                                                                                                                                                                                                                                             `?�     �   �   �   �      J       \ 'n' : ['<Plug>VimwikiGoto'                              , 'open']5�_�      	              �   J    ����                                                                                                                                                                                                                                                                                                                                                             `?�     �   �   �   �    �   �   �   �    5�_�      
           	   �   
    ����                                                                                                                                                                                                                                                                                                                                                             `?�     �   �   �   �      K       \ 'n' : ['<Plug>VimwikiGoto'                              , 'open'],5�_�   	              
   �   "    ����                                                                                                                                                                                                                                                                                                                                                             `?�     �   �   �   �      K       \ 'd' : ['<Plug>VimwikiGoto'                              , 'open'],5�_�   
                 �   '    ����                                                                                                                                                                                                                                                                                                                                                             `?�     �   �   �   �    �   �   �   �    5�_�                    �   
    ����                                                                                                                                                                                                                                                                                                                                                             `?�     �   �   �   �      Q       \ 'd' : ['<Plug>VimwikiDeleteFile'                              , 'open'],5�_�                    �   (    ����                                                                                                                                                                                                                                                                                                                                                             `?�    �   �   �   �      Q       \ 'r' : ['<Plug>VimwikiDeleteFile'                              , 'open'],5�_�                    �   '    ����                                                                                                                                                                                                                                                                                                                                                             `?�     �   �   �   �    �   �   �   �    5�_�                    �   O    ����                                                                                                                                                                                                                                                                                                                                                             `@     �   �   �   �      R       \ 'f' : ['<Plug>VimwikiFollowLink'                              , 'index'],5�_�                    �   H    ����                                                                                                                                                                                                                                                                                                                                                             `@     �   �   �   �      K       \ 'n' : ['<Plug>VimwikiGoto'                              , 'open'],5�_�                    �   R    ����                                                                                                                                                                                                                                                                                                                                                             `@     �   �   �   �      U       \ 'n' : ['<Plug>VimwikiGoto'                              , 'open or create'],5�_�                    �   N    ����                                                                                                                                                                                                                                                                                                                                                             `@     �   �   �   �      Q       \ 'd' : ['<Plug>VimwikiDeleteFile'                              , 'open'],5�_�                    �   N    ����                                                                                                                                                                                                                                                                                                                                                             `@      �   �   �   �      Q       \ 'r' : ['<Plug>VimwikiRenameFile'                              , 'open'],5�_�                    �   M    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `@#     �   �   �   �      P       \ 'r' : ['<Plug>VimwikiRenameFile'                              , 'ren'],5�_�                    �   (    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `@/    �   �   �   �      T       \ 'f' : ['<Plug>VimwikiFollowLink'                              , 'go back'],5�_�                    �   
    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `@f    �   �   �   �      T       \ 'f' : ['<Plug>VimwikiGoBackLink'                              , 'go back'],5�_�                    �        ����    �   L                                                                                                                                                                                                                                                                                                                   �           �           V   
    `@�    �   �   �                   5�_�                    �   O    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `A9   	 �   �   �   �      R       \ 'f' : ['<Plug>VimwikiFollowLink'                              , 'index'],5�_�                    �       ����    �   L                                                                                                                                                                                                                                                                                                                                                    `B      �   �   �   �    �   �   �   �    5�_�                    �   
    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `B     �   �   �   �      T       \ 'b' : ['<Plug>VimwikiGoBackLink'                              , 'go back'],5�_�                    �   K    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `B
     �   �   �   �      [       \ 'f' : ['<Plug>VimwikiFollowLink'                              , 'flow or create'],5�_�                   �   J    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `B     �   �   �   �      T       \ 'b' : ['<Plug>VimwikiGoBackLink'                              , 'go back'],5�_�                    �   (    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `B     �   �   �   �      W       \ 'b' : ['<Plug>VimwikiGoBackLink'                              , 'folow slit'],5�_�                     �   &    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `B'     �   �   �   �    �   �   �   �    5�_�      !               �   '    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `B+     �   �   �   �      V       \ 'b' : ['<Plug>VimwikiSplitLink'                              , 'folow slit'],5�_�       "           !   �   L    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `B5     �   �   �   �      W       \ 'b' : ['<Plug>VimwikiVSplitLink'                              , 'folow slit'],5�_�   !   #           "   �   K    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `B6     �   �   �   �      V       \ 'b' : ['<Plug>VimwikiSplitLink'                              , 'folow slit'],5�_�   "   $           #   �   L    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `B7     �   �   �   �      \       \ 'f' : ['<Plug>VimwikiFollowLink'                              , 'folow or create'],5�_�   #   %           $   �   
    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `B@   
 �   �   �   �      X       \ 'b' : ['<Plug>VimwikiVSplitLink'                              , 'follow slit'],5�_�   $   &           %   L        ����    �   L                                                                                                                                                                                                                                                                                                                                                    `Ɗ     �   L   N   �    �   L   M   �    5�_�   %   '           &   M       ����    �   L                                                                                                                                                                                                                                                                                                                                                    `Ə     �   L   N   �      _let g:which_key_map['v'] = [ '<C-W>v'                                          , 'split right']5�_�   &   (           '   M       ����    �   L                                                                                                                                                                                                                                                                                                                                                    `Ƒ     �   L   N   �      _let g:which_key_map['-'] = [ '<C-W>v'                                          , 'split right']5�_�   '   )           (   M   $    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `Ɣ     �   L   N   �      _let g:which_key_map['/'] = [ '<C-W>v'                                          , 'split right']5�_�   (   *           )   M        ����    �   L                                                                                                                                                                                                                                                                                                                   M          M          V       `��     �   L   N   �      Ylet g:which_key_map['/'] = [ ''                                          , 'split right']5�_�   )   +           *   L        ����    �   L                                                                                                                                                                                                                                                                                                                   M          M          V       `��    �   L   N   �    �   L   M   �    5�_�   *   ,           +   S        ����    �   L                                                                                                                                                                                                                                                                                                                                                    `��     �   S   U   �    �   S   T   �    5�_�   +   -           ,   T       ����    �   L                                                                                                                                                                                                                                                                                                                                                    `��     �   S   T          :      \ 'f' : ['bfirst'                 , 'first-buffer'],5�_�   ,   .           -   V       ����    �   L                                                                                                                                                                                                                                                                                                                                                    `��     �   V   X   �    5�_�   -   /           .   W        ����    �   L                                                                                                                                                                                                                                                                                                                                                    `��     �   V   W           5�_�   .   0           /   V        ����    �   L                                                                                                                                                                                                                                                                                                                                                    `��     �   V   X   �    �   V   W   �    5�_�   /   1           0   W   	    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `��     �   V   X   �      =      \ 'p' : ['bprevious'              , 'previous-buffer'],5�_�   0   2           1   W       ����    �   L                                                                                                                                                                                                                                                                                                                                                    `��     �   V   X   �      =      \ 'd' : ['bprevious'              , 'previous-buffer'],5�_�   1   4           2   W       ����    �   L                                                                                                                                                                                                                                                                                                                   W          W          v       `��     �   V   X   �      ;      \ 'd' : ['bdelete'              , 'previous-buffer'],5�_�   2   5   3       4   W   )    ����    �   L                                                                                                                                                                                                                                                                                                                   W          W          v       `��    �   V   X   �      ;      \ 'd' : ['bdelete'              , 'previous-buffer'],5�_�   4   6           5   �   
    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `�5     �   �   �   �      W       \ 'b' : ['<Plug>VimwikiSplitLink'                              , 'follow slit'],5�_�   5   7           6   �   
    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `�7    �   �   �   �      T       \ 's' : ['<Plug>VimwikiGoBackLink'                              , 'go back'],5�_�   6   8           7   �   P    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `�o     �   �   �   �      W       \ 's' : ['<Plug>VimwikiSplitLink'                              , 'follow slit'],5�_�   7   9           8   �   P    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `�p     �   �   �   �      S       \ 's' : ['<Plug>VimwikiSplitLink'                              , 'follow '],5�_�   8               9   �   Q    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `�u    �   �   �   �      X       \ 'v' : ['<Plug>VimwikiVSplitLink'                              , 'follow slit'],5�_�   2           4   3   W       ����    �   L                                                                                                                                                                                                                                                                                                                   W          W          v       `��     �   V   X   �      +      \ 'd' : ['bdelete''previous-buffer'],5�_�                    �   Q    ����    �   L                                                                                                                                                                                                                                                                                                                                                    `B     �   �   �   �      Q       \ 's' : ['<Plug>VimwikiGoBackLink'                              , 'go b'],5�_�                             ����                                                                                                                                                                                                                                                                                                                                                  V        `�     �              5��