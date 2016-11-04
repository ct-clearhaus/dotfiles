" I should spend time on reading this:
" https://github.com/bfirsh/dotfiles/blob/master/.vimrc

" Vundle is a vvonder.
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Tabular'
Bundle 'git://github.com/kchmck/vim-coffee-script.git'
Bundle 'Syntastic'

Bundle 'git://github.com/digitaltoad/vim-pug.git'
" Syntax highligting, previously vim-jade

Bundle 'plasticboy/vim-markdown'
Bundle 'ekalinin/Dockerfile.vim'
Bundle 'git://github.com/jamessan/vim-gnupg.git'
"Bundle 'git://github.com/Rykka/clickable.vim'
"Bundle 'git://github.com/Rykka/riv.vim' " Restructured text
Bundle 'mileszs/ack.vim'
"Bundle 'tpope/vim-fugitive' " Git bindings

Bundle 'elzr/vim-json'
let g:vim_json_syntax_conceal = 0

Bundle 'https://github.com/altercation/vim-colors-solarized.git'
syntax enable
set background=dark
set term=xterm-256color
colorscheme solarized

Bundle 'vim-ruby/vim-ruby'
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2

Plugin 'airblade/vim-gitgutter'

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

" Invert colours on the 80th character.
highlight ColorColumn term=reverse cterm=reverse
call matchadd('ColorColumn', '\%80v', 100)

cmap w!! %!sudo tee > /dev/null %

let g:syntastic_mode_map = { 'passive_filetypes': ['rst'] }

"let g:syntastic_enable_signs=1
"let g:syntastic_auto_jump=0
"let g:syntastic_auto_loc_list=1
"let g:syntastic_ruby_checkers=['rubocop', 'mri']
"let g:syntastic_ruby_rubocop_exec='/home/ct/.rvm/gems/ruby-2.2.1/bin/rubocop'

set foldlevel=8

set splitbelow
