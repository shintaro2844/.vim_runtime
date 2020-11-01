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
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  let g:deoplete#enable_at_startup = 1
else
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'vimwiki/vimwiki'
  Plug 'itchyny/calendar.vim'
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
Plug 'preservim/nerdcommenter'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-sleuth'
Plug 'tpope/tpope-vim-abolish'
Plug 'junegunn/goyo.vim'

""""""""""""""""""""""""""""""
" => Snippet
""""""""""""""""""""""""""""""
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'garbas/vim-snipmate'

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
"Plug 'amix/vim-zenroom2'
"Plug 'Yggdroot/indentLine'
"Plug 'maximbaz/lightline-ale'
"Plug 'altercation/vim-colors-solarized'

""""""""""""""""""""""""""""""
" => Git
""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'
"Plug 'mattn/vim-gist'
"Plug 'mattn/webapi-vim'


call plug#end()
