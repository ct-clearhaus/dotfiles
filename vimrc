" Vundle is a vvonder.
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Tabular'
Bundle 'git://github.com/rodjek/vim-puppet.git'
Bundle 'git://github.com/kchmck/vim-coffee-script.git'
Bundle 'Syntastic'
Bundle 'git://github.com/digitaltoad/vim-jade.git'
Bundle 'plasticboy/vim-markdown'
Bundle 'ekalinin/Dockerfile.vim'

Bundle 'https://github.com/altercation/vim-colors-solarized.git'
colorscheme solarized

Bundle 'vim-ruby/vim-ruby'
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2

filetype plugin indent on
"set grepprg=grep\ -nH\ $*
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

set textwidth=80


" Spelling
setlocal spell spelllang=en_gb
set spellfile=spellfile.utf8.add

set number
set nowrap

set listchars=tab:>~,nbsp:~,trail:.
set list

syntax on
set background=dark

" Invert colours on the 80th character.
highlight ColorColumn term=reverse cterm=reverse
call matchadd('ColorColumn', '\%80v', 100)

cmap w!! %!sudo tee > /dev/null %
