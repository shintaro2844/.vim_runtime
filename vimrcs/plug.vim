"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Load pathogen paths
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:vim_runtime = expand('<sfile>:p:h')."/.."
call pathogen#infect(s:vim_runtime.'/my_plugins/{}')
call pathogen#helptags()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plug.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('nvim')
  call plug#begin('~/.vim_runtime/nplugged')
else
  call plug#begin('~/.vim_runtime/plugged')
endif

""""""""""""""""""""""""""""""
" => Autocompelete
""""""""""""""""""""""""""""""

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

let g:deoplete#enable_at_startup = 1


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
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-sleuth'

""""""""""""""""""""""""""""""
" => Snippet
""""""""""""""""""""""""""""""
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'garbas/vim-snipmate'


""""""""""""""""""""""""""""""
" => Syntax
""""""""""""""""""""""""""""""
Plug 'w0rp/ale'
"Plug 'sheerun/vim-polyglot'


""""""""""""""""""""""""""""""
" => File & Search
""""""""""""""""""""""""""""""
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'jlanzarotta/bufexplorer'

""""""""""""""""""""""""""""""
" => Color theme & status bar
""""""""""""""""""""""""""""""
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
"Plug 'amix/vim-zenroom2'
"Plug 'morhetz/gruvbox'
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

""""""""""""""""""""""""""""""
" => Other
""""""""""""""""""""""""""""""
Plug 'vimwiki/vimwiki'
Plug 'itchyny/calendar.vim'


""""""""""""""""""""""""""""""
" => Language specific
""""""""""""""""""""""""""""""

""""""""""python""""""""""
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop'  }
"Plug 'Vimjas/vim-python-pep8-indent'
"Plug 'nvie/vim-flake8'
"Plug 'davidhalter/jedi-vim'

"""""""""" C/C++""""""""""""
"Plug 'octol/vim-cpp-enhanced-highlight'

""""""""""Ruby""""""""""
"Plug 'vim-ruby/vim-ruby'
"Plug 'tpope/vim-rails'
"Plug 'kchmck/vim-coffee-script'
"Plug 'thoughtbot/vim-rspec'

""""""""""javascript""""""""""
"Plug 'leafgarland/typescript-vim'
"Plug 'pangloss/vim-javascript'

""""""""""Go""""""""""""
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'  }

""""""""""""html & css""""""""""""
"Plug 'mattn/emmet-vim'

"""""""""""Common lisp""""""""""""
"Plug 'kovisoft/slimv'
"Plug 'vlime/vlime', {'rtp': 'vim/'}

""""""""""""Rust""""""""""""""
"Plug 'rust-lang/rust.vim'

""""""""""""Markdown""""""""""""""
Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular'
"Plug 'xolox/vim-misc'

""""""""""""Other""""""""""""""""
"Plug 'chr4/nginx.vim'
"Plug 'christoomey/vim-tmux-navigator'

""""""""""""""""""""""""""""""
" => LSP
""""""""""""""""""""""""""""""
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'
"Plug 'lighttiger2505/deoplete-vim-lsp'

""""""""""""""""""""""""""""""
" => Other
""""""""""""""""""""""""""""""
Plug 'tpope/tpope-vim-abolish'
"Plug 'michaeljsmith/vim-indent-object'
"Plug 'farmergreg/vim-lastplace'
"Plug 'mg979/vim-visual-multi'
"Plug 'vim-scripts/mayansmoke'
"Plug 'amix/open_file_under_cursor.vim'
"Plug 'vim-scripts/tlib'
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'sophacles/vim-bundle-mako'
"Plug 'groenewege/vim-less'
"Plug 'therubymug/vim-pyte'
"Plug 'digitaltoad/vim-pug'

call plug#end()
