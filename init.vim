" ------------------------------------------
"===========================================
" MY init.vim FILE!
"===========================================
" ------------------------------------------

" Place the cursor on path of a file and press gf (Go to File) to jump to the
" file. Press Ctrl-o to jump back


"===========================================
" General settings
"===========================================
"source ~/.config/nvim/general/... 

source ~/.config/nvim/general/general.vim



"===========================================
" Loading plugins and their configurations.
"===========================================
source ~/.config/nvim/plugins.vim

"source ~/.config/nvim/plug-configs/...



"===========================================
" My 'own' vimscripts
"===========================================
"source ~/.config/nvim/scripts/...

source ~/.config/nvim/scripts/writingmode.vim

"===========================================
" Visual apperance
"===========================================
"source ~/.config/nvim/theming/...

source ~/.config/nvim/theming/themes.vim

"===========================================
" Everything keybinding-related
"===========================================
"source ~/.config/nvim/keybinds/...

source ~/.config/nvim/keybinds/keybindings.vim



" A loner config for the colorizer plugin
lua require'plug-colorizer'
