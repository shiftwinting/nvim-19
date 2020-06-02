
let g:startify_session_dir = '~/.config/nvim/session'       "where we want startify to save our sessions

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'b': '~/.config/bspwm/bspwmrc' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ { 'al': '~/.oh-my-zsh/custom/aliases.zsh' },
            \ ]

let g:startify_custom_header = [
        \ '---------------------------------',
        \ '|   _   _ _   _ ________  ___   |',
        \ '|  | \ | | | | |_   _|  \/  |   |',
        \ '|  |  \| | | | | | | | .  . |   |',
        \ '|  | . ` | | | | | | | |\/| |   |',
        \ '|  | |\  \ \_/ /_| |_| |  | |   |',
        \ '|  \_| \_/\___/ \___/\_|  |_/   |',
        \ '---------------------------------',
        \]
