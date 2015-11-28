filetype off
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
filetype plugin on
filetype indent on
set background=dark
syntax on

" General Configuraiton
autocmd! bufwritepost .vimrc source % " auto reload
set pastetoggle=<F2>
set clipboard=unnamedplus
set mouse=a
set bs=2

" leader key and combinations
let mapleader =","
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows
vnoremap <Leader>s :sort<CR>

" bind Ctrl+keys  to move around windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving between the tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" easier moving codeblocks
vnoremap < <gv  " move selected blocks to left
vnoremap > >gv  " move selected codeblock to right

" show whitespace
" MUST be inserted before the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=5492
set t_Co=256
color wombat256mod




" General configuration
set encoding=utf-8
set grepprg=grep\ -nH\ $*
set showmode number ruler   " Aesthetics (numbers around and mode we're in)
set nocompatible nomodeline " Use Vim defaults
set ts=4 sw=4 et ai         " Indents with 4 spaces
set history=50              " CLI history
"set bs=indent,eol,start     " Backspace for lines and indentation
set ww=b,s,<,>,[,]          " Arrows & [back]space wordwraps between lines
set tw=79 nowrap            " PEP-8 line break without visual wordwrapping

" Whitespaces
set list lcs=tab:¤·,trail:· " Shows TABs and trailing chars
hi TABs ctermbg=Red ctermfg=LightRed guibg=Red guifg=LightRed term=italic
hi TrSp ctermbg=DarkGray ctermfg=Red guibg=DarkGray guifg=Red term=italic
call matchadd("TABs", "\t")      " All TABs but the trailing ones
call matchadd("TrSp", "\\s\\+$") " Trailing TABs and spaces

" Paste mouse selected text with Shift+Insert
if has('gui_running')
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>
endif

