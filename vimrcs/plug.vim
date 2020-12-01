"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plug.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('nvim')
  call plug#begin('~/.vim_runtime/nplugged')
else
  call plug#begin('~/.vim_runtime/plugged')
endif

""""""""""""""""""""""""""""""
" => Vim or Neovim
""""""""""""""""""""""""""""""

if has('nvim')
  Plug 'jiangmiao/auto-pairs'
else
  Plug 'ervandew/supertab'
  Plug 'vimwiki/vimwiki'
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  " My plugins
  " let s:vim_runtime = expand('<sfile>:p:h')."/.."
  " call pathogen#infect(s:vim_runtime.'/my_plugins/{}')
  " call pathogen#helptags()
endif

""""""""""""""""""""""""""""""
" =>  theme
""""""""""""""""""""""""""""""
if has('nvim')
  Plug 'drewtempelmeyer/palenight.vim'
else
  Plug 'dracula/vim', { 'as': 'dracula' }
endif

""""""""""""""""""""""""""""""
" => lsp setting
""""""""""""""""""""""""""""""

if has('nvim')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
else
  Plug 'prabirshrestha/async.vim'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'mattn/vim-lsp-icons'
  Plug 'thomasfaingnaert/vim-lsp-snippets'
  Plug 'thomasfaingnaert/vim-lsp-ultisnips'
  " especially Go
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
endif

""""""""""""""""""""""""""""""
" => Moving
""""""""""""""""""""""""""""""
Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'

""""""""""""""""""""""""""""""
" => Editing
""""""""""""""""""""""""""""""
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

""""""""""""""""""""""""""""""
" => Misc
""""""""""""""""""""""""""""""
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth'
Plug 'tpope/tpope-vim-abolish'
Plug 'terryma/vim-expand-region'
Plug 'junegunn/goyo.vim'

""""""""""""""""""""""""""""""
" => Linter
""""""""""""""""""""""""""""""
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'

""""""""""""""""""""""""""""""
" => Snippet
""""""""""""""""""""""""""""""
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

""""""""""""""""""""""""""""""
" => Filer & Search
""""""""""""""""""""""""""""""
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'jlanzarotta/bufexplorer'

""""""""""""""""""""""""""""""
" => status bar
""""""""""""""""""""""""""""""
Plug 'itchyny/lightline.vim'

""""""""""""""""""""""""""""""
" => Git
""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
"Plug 'mattn/vim-gist'
"Plug 'mattn/webapi-vim'

call plug#end()
