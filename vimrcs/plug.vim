"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plug.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('nvim')
  call plug#begin('~/.vim_runtime/nplugged')
else
  call plug#begin('~/.vim_runtime/plugged')
endif

""""""""""""""""""""""""""""""
" => Vim & Neovim
""""""""""""""""""""""""""""""

if has('nvim')
  Plug 'w0rp/ale'
  Plug 'sheerun/vim-polyglot'
  Plug 'jiangmiao/auto-pairs'
  Plug 'morhetz/gruvbox'
  Plug 'neoclide/coc.nvim'
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  "let g:deoplete#enable_at_startup = 1
else
  Plug 'vimwiki/vimwiki'
  Plug 'itchyny/calendar.vim'
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  "=====lsp settings=====
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'mattn/vim-lsp-icons'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'
  "======================
  let s:vim_runtime = expand('<sfile>:p:h')."/.."
  call pathogen#infect(s:vim_runtime.'/my_plugins/{}')
  call pathogen#helptags()
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
Plug 'ervandew/supertab'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-sleuth'
Plug 'tpope/tpope-vim-abolish'
Plug 'junegunn/goyo.vim'

""""""""""""""""""""""""""""""
" => Snippet
""""""""""""""""""""""""""""""
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

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
"Plug 'airblade/vim-gitgutter'
"Plug 'mattn/vim-gist'
"Plug 'mattn/webapi-vim'

call plug#end()
