set nocompatible
if has("win32") || has("win64")
  source $VIMRUNTIME/vimrc_example.vim
  source $VIMRUNTIME/mswin.vim
  behave mswin
end

set viminfo^=!

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Syntax and appearance
syntax enable
filetype on

set cf
set clipboard+=unnamed
set history=256
set autowrite
set ruler
set nu
set nowrap
set timeoutlen=250
colorscheme railscasts

set ts=2
set bs=2
set shiftwidth=2
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab

set backspace=indent,eol,start

set showmatch
set mat=5
set list
" Show $ at end of line and trailing space as ~
set lcs=tab:>-,trail:~,extends:>,precedes:<
set novisualbell
set noerrorbells
set laststatus=2
" gvim specific
set mousehide
set mouse=a
let mapleader = ","

set incsearch
set hlsearch
set showcmd

map <Leader>h :set invhls <CR>
map <Leader>l :lw<CR>

" Wiki settings
if has("unix")
  let g:vimwiki_list = [{'path': '~/Dropbox/Wiki/', 'ext': '.wiki'}]
else
  let g:vimwiki_list = [{'path': 'c:\documents and settings\zaki\my documents\my dropbox\wiki\', 'ext': '.wiki'}]
end

map :cloc :!cloc --exclude-dir=.git,.idea .<CR>
map <Leader>n :NERDTreeToggle<CR>

noremap <silent> <F11> :cal VimCommanderToggle()<CR>
let g:wimcommander_shallcd = 1

" Visual Studio style shortcuts
map <C-S-F> :lvimgrep //gj **/*.*<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
imap <C-Space> <C-N>

" Ruby/rails Settings
let g:rails_default_file='config/database.yml'
map <Leader>m :Rmodel
map <Leader>c :Rcontroller
map <Leader>v :Rview
map <Leader>r :e config/routes.rb
map :W :w

