set nocompatible

set autoread

filetype off
filetype plugin on
filetype indent on

set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" GUI Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'                      " built-in file manager
Plugin 'vim-airline/vim-airline'
Plugin 'octol/vim-cpp-enhanced-highlight'  " better c++ syntax highlighting

" Color themes
Plugin 'morhetz/gruvbox'
Plugin 'NLKNguyen/papercolor-theme'

" Editor plugins
Plugin 'Valloric/YouCompleteMe'     " c++ (and mb others) autocomplete
Plugin 'klen/python-mode'	        " Python mode (docs, refactor, highlighting and more)
Plugin 'davidhalter/jedi-vim' 		" Jedi-vim autocomplete plugin
Plugin 'mattn/emmet-vim'            " better html editing

call vundle#end()           
filetype plugin indent on  

set novisualbell
set t_vb=


set si
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

"     Gruvbox-theme Settings
set termguicolors
let g:gruvbox_italic=1
:set bg=dark
colorscheme gruvbox 

"     PaperColor-theme Settings
" set background=light
" colorscheme papercolor


set number
set t_Co=256
syntax on
set noeol
set showcmd
set autoindent
set cindent
set mouse=a
set clipboard=unnamedplus
set incsearch
set autowrite

map <leader>gf :e <cfile><cr>

autocmd FileType python map <F6> :w\|!time python3 "%" <CR>

autocmd FileType cpp map <F9> :w\|!g++ -std=c++17 -Wall -Wextra -g -O2 -Wno-unused-result -DLOCAL "%" -o "%:r" <CR>
autocmd FileType cpp map <C-F9> :w\|!g++ -std=c++17 -Wall -Wextra -g -O2 -Wno-unused-result "%" -o "%:r" <CR>
autocmd FileType cpp map <F6> :! time ./"%:r" <CR>
autocmd FileType cpp map <F7> :! time ./"%:r" < input.txt > output.txt <CR>
autocmd FileType cpp map <F8> :! time ./"%:r" < input.txt <CR>

autocmd FileType c map <F9> :w\|!gcc -std=c11 -Wall -O2 -std=gnu11 -lm "%" -o "%:r" <CR>
autocmd FileType c map <F6> :! time ./"%:r" <CR>

autocmd FileType tex map <F6> :LLPStartPreview

set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

map <C-o> :NERDTreeToggle<CR>

" YouCompleteMe settings
let g:ycm_autoclose_preview_window_after_completion=1

"=====================================================
" C settings
"=====================================================
autocmd FileType c set tabstop=2
autocmd FileType c set shiftwidth=2
autocmd FileType c set colorcolumn=76
autocmd FileType c set textwidth=76

"=====================================================
" Python-mode settings
"=====================================================
" отключаем автокомплит по коду (у нас вместо него используется jedi-vim)
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" документация
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'
" проверка кода
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"
" провека кода после сохранения
let g:pymode_lint_write = 1

" поддержка virtualenv
let g:pymode_virtualenv = 1

" установка breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" подстветка синтаксиса
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" отключить autofold по коду
let g:pymode_folding = 0

" возможность запускать код
let g:pymode_run = 1
let g:jedi#rename_command = "<leader>r"
let g:pymode_options_max_line_length = 120

" Disable choose first function/method at autocomplete
let g:jedi#popup_select_first = 0
let g:jedi#rename_command = "<leader>R"


" Emmet settings
let g:user_emmet_leader_key=','


"=====================================================
" Python-mode settings
"=====================================================
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

