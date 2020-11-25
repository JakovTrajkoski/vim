let mapleader=" "

call plug#begin('~/.vim/plugged')
 Plug 'itchyny/lightline.vim'
 Plug 'rafi/awesome-vim-colorschemes'
 Plug 'PotatoesMaster/i3-vim-syntax'
 Plug 'tpope/vim-surround'
 Plug 'mbbill/undotree'
 Plug 'tpope/vim-fugitive'
 Plug 'JuliaEditorSupport/julia-vim'
 Plug 'octol/vim-cpp-enhanced-highlight'
 " Plug 'dense-analysis/ale'
call plug#end()

" let g:ale_cpp_cppcheck_executable = 'cppcheck'
" let g:ale_cpp_cppcheck_options = '--enable=style'
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_enter = 0
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

set laststatus=2
set noshowmode

set tabstop=4
set relativenumber 
set number

" Use color syntax highlighting.
syntax on

" Color specifications. Change them as you would like.
" let g:srcery_italic=1
" let g:srcery_bold=1
" let g:srcery_transparent_background=0
" let g:srcery_underline=1
" let g:srcery_undercurl=1
" let g:srcery_inverse=1
" let g:srcery_inverse_matches=0
" let g:srcery_inverse_match_paren=0
" let g:srcery_dim_lisp_paren=1
set background=dark
colorscheme deus 

let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ }

" Options.

imap ;; <ESC>

" Options I added from .vimrc config video 

set nowrap 
set autoindent
set undodir=~/.vim/undodir
set undofile
set incsearch

" Options I added when I watched an interesting talk about using vim without plugins

set path+=**	" Improves the :find command so it can search recursivly
set wildmenu	" In case more than one instance is found, a special manu is opened

" Tags help with exploring the codebase
" command! MakeTags !ctags -R . " Create tags once vim is launched

" Tweaks for browsing
let g:netrw_banner=0		" disable annoying banner
let g:netrw_browse_split=2	" open in prior window
let g:netrw_altv=1			" open splits to the right
let g:netrw_liststyle=3		" tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
let g:netrw_winsize=25

nnoremap <leader>pv :wincmd v <bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>w :w <CR>
nnoremap <leader>q :q <CR>
nnoremap <leader>r :read ~/.vim/templates/
nnoremap <leader>t :tabe <CR> gt
" CODE SNIPPETS 

" First settings which were added, I have no idea what most of them do

set backspace=2		" Allows insert-mode backspace to work as one expects
set cindent
set cinkeys=0{,0},:,!^F,o,O,e	" See "cinkeys"; this stops "#" from indenting
set fileformat=unix	" No crazy CR/LF
set nobackup		" Don't use a backup file (also see writebackup)
set nohlsearch		" Don't highlight search terms
set nojoinspaces	" One space after a "." rather than 2
set ruler			" Show the line position at the bottom of the window
set scrolloff=1		" Minimum lines between cursor and window edge
set shiftwidth=4	" Indent by 4 columns (for C functions, etc).
set showcmd			" Show partially typed commands
set showmatch		" Show parentheses matching
set smartindent		" Indent settings (really only the cindent matters)
set textwidth=120	" Maximum line width
set viminfo='0,\"100,	" Stay at the start of a file when opening it
set whichwrap=<,>,[,],h,l " Allows for left/right keys to wrap across lines
set writebackup		" Write temporary backup files in case we crash

set encoding=utf-8

autocmd BufRead,BufNewFile *.jl :set filetype=julia

