let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ ]

let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
    endfunction

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ ]

let g:startify_enable_special = 0

let g:startify_custom_header = [
          \'   ███▄    █ ██▒   █▓ ██▓ ███▄ ▄███▓',
          \'   ██ ▀█   █▓██░   █▒▓██▒▓██▒▀█▀ ██▒',
          \'  ▓██  ▀█ ██▒▓██  █▒░▒██▒▓██    ▓██░',
          \'  ▓██▒  ▐▌██▒ ▒██ █░░░██░▒██    ▒██ ',
          \'  ▒██░   ▓██░  ▒▀█░  ░██░▒██▒   ░██▒',
          \'  ░ ▒░   ▒ ▒   ░ ▐░  ░▓  ░ ▒░   ░  ░',
          \'  ░ ░░   ░ ▒░  ░ ░░   ▒ ░░  ░      ░',
          \'     ░   ░ ░     ░░   ▒ ░░      ░   ',
          \'           ░      ░   ░         ░   ',
          \'                 ░                  ',
          \]
