" ---------------------------------------------------
" My init.vim file! 
" ---------------------------------------------------

" Place the cursor on path of a file and press gf (Go to File) to jump to the
" file. Press Ctrl o to jump back

source ~/.config/nvim/general.vim
source ~/.config/nvim/plugins.vim

" loading the configurations for the plugins
source ~/.config/nvim/plug-configs/sneak.vim
source ~/.config/nvim/plug-configs/quickscope.vim
source ~/.config/nvim/plug-configs/start-screen.vim
source ~/.config/nvim/plug-configs/rnvimr.vim

"my own vimscripts
source ~/.config/nvim/writingmode.vim

" 
source ~/.config/nvim/theming.vim
source ~/.config/nvim/keybindings.vim

lua require'plug-colorizer'
