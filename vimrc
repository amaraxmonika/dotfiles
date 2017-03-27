set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" active plugins -----------------------------------------------
Plugin 'gmarik/Vundle.vim'

" easy comment out line
Plugin 'https://github.com/tomtom/tcomment_vim'

" syntax
Plugin 'https://github.com/Valloric/YouCompleteMe.git'

" fuzzy finder
Plugin 'kien/ctrlp.vim'

" html complete
Plugin 'mattn/emmet-vim'

" javascript
Plugin 'pangloss/vim-javascript'

" visual marker plugin
Plugin 'kshenoy/vim-signature'

" Auto closing brackets
Plugin 'Raimondi/delimitMate'

" JSHint for linting
Plugin 'amaraxmonika/jshint.vim'

" directory browser
Plugin 'scrooloose/nerdtree.git'

" tmux navigation
Plugin 'christoomey/vim-tmux-navigator'

" dockerfile syntax plugin
Plugin 'ekalinin/Dockerfile.vim'

" test plugins below 
" vim tmux testing integration 
Plugin 'benmills/vimux'

" color syntax
" Plugin 'dikiaap/minimalist'
Plugin 'morhetz/gruvbox'

" vim ack for search
Plugin 'mileszs/ack.vim'

" end test plugins

" inactive plugins ---------------------------------------------
" plugin for php qa
" Bundle 'joonty/vim-phpqa.git'

" auto tags
" Plugin 'joonty/vim-taggatron'

" tab complete
" Plugin 'ervandew/supertab'

" python syntax
" Plugin 'hdima/python-syntax'

" python fullstack
"Plugin 'klen/python-mode'

" c plugin
"Plugin 'vim-scripts/c.vim'

" indent help
" Plugin 'nathanaelkane/vim-indent-guides'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line" Tun on line numbering.  Turn it of with "set nonu"
set nu

" Set syntax on
syntax on

" Indent automatically depending on filetype
"filetype indent on
"set autoindent
" file type specific settings

" Hightlight search
set hls

" Change colorscheme from default to delek
colorscheme delek
" colorscheme gruvbox
" setting colorcolumn at 80
" let &colorcolumn=join(range(81,999), ",")
" highlight ColorColumn ctermbg=235 guibg=#2c2d27


" Turn off bracket highlighting
let g:loaded_matchparen=1

" Mapping keys k + j to <esc>
inoremap kj <Esc>
" Trying shift space
nnoremap <Space> <C-d>
nnoremap <S-Space> <C-u>
        
" setting mouse mode on
set mouse=a

" Mapping spacebar to clear current search buffer 
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" setting tab to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" setting file specific tabs/space
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" setting clipboard
"set clipboard=unnamed

" fixing backspace settings
set backspace+=start,eol,indent  

" turning off auto comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" set relative line position numbers
set relativenumber
set number
" display at least 3 lines when scrolling
set scrolloff=3 

" setting cursor color
highlight CursorLineNr ctermfg=1

" set highlight color
highlight Visual ctermbg=8

" opens nerdtree if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" add uppercase to insert mode
imap <c-u> <esc> viw~ gi

" setting paste mode
set pastetoggle=<F2>

" testing fast tty
" set ttyfast

" setting python syntax on
let python_highlight_all = 1
" turn off python folding
let g:pymode_folding = 0

" faster cmd mode save
nnoremap ; :

" sudo save after file is open
cmap w!! w !sudo tee % >/dev/null

" Custom leader macros -----
" adding leader key
let maplocalleader = "\\"
let mapleader = "-"
map <leader>nt :NERDTreeToggle<CR>

"vimux keys
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
let VimuxUseNearest = 0

" adding easy vimrc split edit
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" tab and window nav---------------------------------------------

" Toggle to next window 
nnoremap gn <C-W><C-W>

"" easy tabbing 
nnoremap gh :tabprev<CR>
nnoremap gl :tabnext<CR>
nnoremap g0 :tabfirst<CR>
nnoremap g$ :tablast<CR>
nnoremap tt :tabe<Space>

" Easy source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" Adding spelling correction
iabbrev and and
iabbrev fuction function
iabbrev fnction function
iabbrev slef self

" Surround a word with double quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" Delete inside parenthesis
onoremap p i(
" Delete inside code block
onoremap b /return<cr>

" Autocommands for javascript and python
" py
autocmd FileType python :iabbrev <buffer> iff if:<left>
autocmd FileType javascript :iabbrev <buffer> iff if()<left>

" Toggle with za
" Vimscript file settings -------------------{{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" My example functions here
" setting color to use minimalist colorscheme
set t_Co=256
" colorscheme minimalist

" Test area for new keybindings ---------------------------------
" resize panes with arrow keys
noremap <up>    <C-W>+
noremap <down>  <C-W>-
noremap <left>  3<C-W><
noremap <right> 3<C-W>>

" delete to black hole register instead of print buffer
nnoremap <Leader>d "_d
nnoremap <Leader>D "_D
nnoremap <Leader>C "_C
nnoremap <Leader>c "_c
nnoremap <Leader>x "_x
