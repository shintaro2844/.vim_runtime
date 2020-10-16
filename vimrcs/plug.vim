"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Load pathogen paths
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:vim_runtime = expand('<sfile>:p:h')."/.."
call pathogen#infect(s:vim_runtime.'/my_plugins/{}')
call pathogen#helptags()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plug.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim_runtime/plugged')

""""""""""""""""""""""""""""""
" => Moving & editing general
""""""""""""""""""""""""""""""
Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'preservim/nerdcommenter'


""""""""""""""""""""""""""""""
" => Snippet
""""""""""""""""""""""""""""""
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'garbas/vim-snipmate'


""""""""""""""""""""""""""""""
" => Syntax highlight
""""""""""""""""""""""""""""""
Plug 'w0rp/ale'
"Plug 'sheerun/vim-polyglot'

" lsp
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'
"Plug 'Shougo/deoplete.nvim'
"Plug 'lighttiger2505/deoplete-vim-lsp'

""""""""""""""""""""""""""""""
" => File & Search
""""""""""""""""""""""""""""""
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'jlanzarotta/bufexplorer'
"Plug 'jistr/vim-nerdtree-tabs'

""""""""""""""""""""""""""""""
" => Color theme & status bar
""""""""""""""""""""""""""""""
"Plug 'morhetz/gruvbox'
"Plug 'altercation/vim-colors-solarized'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
Plug 'Yggdroot/indentLine'

""""""""""""""""""""""""""""""
" => Git
""""""""""""""""""""""""""""""
"Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'
"Plug 'mattn/vim-gist'
"Plug 'mattn/webapi-vim'

""""""""""""""""""""""""""""""
" => Language specific
""""""""""""""""""""""""""""""
""""""""""python""""""""""
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop'  }
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'nvie/vim-flake8'
"Plug 'davidhalter/jedi-vim'

" C/C++
Plug 'octol/vim-cpp-enhanced-highlight'

""""""""""ryby""""""""""
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
"Plug 'xolox/vim-notes'
"Plug 'xolox/vim-misc'

""""""""""""Other""""""""""""""""
"Plug 'chr4/nginx.vim'
"Plug 'fuenor/im_control.vim'


""""""""""""""""""""""""""""""
" => Other
""""""""""""""""""""""""""""""
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-expand-region'
Plug 'tpope/tpope-vim-abolish'
Plug 'michaeljsmith/vim-indent-object'
Plug 'farmergreg/vim-lastplace'
Plug 'ervandew/supertab'
"Plug 'christoomey/vim-tmux-navigator'
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
