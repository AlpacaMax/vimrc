set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'wellle/targets.vim'
Plugin 'fatih/vim-go'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-commentary'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-python/python-syntax'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'JMcKiern/vim-shoot', { 'do': '\"./install.py\" chromedriver' }

call vundle#end()
filetype plugin indent on

set nocompatible
set softtabstop=2
set shiftwidth=2
set tabstop=2
syntax on
filetype indent on
set autoindent
set number
set nobackup
set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set wildmenu
set noshowmode
set hlsearch
set cursorline
set cursorcolumn

runtime macros/matchit.vim

" lightline Plugin Configuration
let g:lightline = {
			\ 'colorscheme': 'wombat',
			\}

" python-syntax Configuration
let g:python_highlight_all = 1
au BufNewFile,BufRead *.py
		\ set tabstop=4 |
		\ set softtabstop=4 |
		\ set shiftwidth=4 |
		\ set expandtab |
		\ set autoindent |
		\ set fileformat=unix 

" Frontend Configuration
au BufNewFile,BufRead *.js,*.html,*.css
		\ set tabstop=2 |
		\ set softtabstop=2 |
		\ set shiftwidth=2 

" YouCompleteMe Configuration
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" NERDTree Configuration
nnoremap <C-n> :NERDTree<CR>
