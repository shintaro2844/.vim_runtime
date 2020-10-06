call plug#begin('~/.vim_runtime/plugged')

""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""
Plug 'tpope/vim-repeat'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/tpope-vim-abolish'
Plug 'michaeljsmith/vim-indent-object'
Plug 'farmergreg/vim-lastplace'

""""""""""""""""""""""""""""""
" => Language specific
""""""""""""""""""""""""""""""
Plug 'python-mode/python-mode'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'nvie/vim-flake8'
Plug 'plasticboy/vim-markdown'
Plug 'chr4/nginx.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'vim-ruby/vim-ruby'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'rust-lang/rust.vim'

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

""""""""""""""""""""""""""""""
" => File & Search
""""""""""""""""""""""""""""""
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'jlanzarotta/bufexplorer'

""""""""""""""""""""""""""""""
" => Color & Theme & Display
""""""""""""""""""""""""""""""
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
Plug 'Yggdroot/indentLine'

""""""""""""""""""""""""""""""
" => Git
""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'
Plug 'mattn/vim-gist'
Plug 'airblade/vim-gitgutter'

""""""""""""""""""""""""""""""
" => Comment
""""""""""""""""""""""""""""""
Plug 'tpope/vim-commentary'
"Plug 'preservim/nerdcommenter'


""""""""""""""""""""""""""""""
" => Other utils
""""""""""""""""""""""""""""""

"Plug 'vim-scripts/mayansmoke'
"Plug 'amix/open_file_under_cursor.vim'
"Plug 'vim-scripts/tlib'
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'sophacles/vim-bundle-mako'
"Plug 'groenewege/vim-less'
"Plug 'therubymug/vim-pyte'
"Plug 'digitaltoad/vim-pug'


call plug#end()
