set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

set showmatch
set textwidth=72
set colorcolumn=+1

highlight ExtraWhitespace ctermbg=red
highlight ColorColumn ctermbg=grey

match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
