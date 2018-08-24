call plug#begin('~/.local/share/nvim/plugged')
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'cespare/vim-toml'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'fatih/vim-go'
Plug 'fatih/molokai'
Plug 'eslint/eslint'
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

" Misc
syntax on
set backspace=indent,eol,start
set ttyfast 		" fast scrolling
set noerrorbells
set number  		" page numbers
set ignorecase
set smartcase
set mouse=a
set incsearch
set hlsearch
set autoread
set encoding=utf-8
set nobackup
set noswapfile
set hidden
set paste
set clipboard+=unnamed  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard
set shiftwidth=2
set tabstop=2
syntax enable

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

" Theme
colorscheme molokai
let g:molokai_original=1

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" Nerdtree
map <S-l> :NERDTreeFocus<CR>
map <C-l> :NERDTreeToggle<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_yaml_checkers = ['yamllint']
"let g:syntastic_go_checkers = ['golint']
"let g:syntastic_html_checkers = ['tidy']
"let g:syntastic_javascript_checkers = ['gjslint']

" Fugitive
set statusline+=%{FugitiveStatusline()}
