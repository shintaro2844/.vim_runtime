""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""
" Fast saving
nmap <leader>w :w!<cr>
nmap <leader><ESC> <ESC><S-z><S-z>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fast editing and reloading of vimrc configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>e :e! ~/.vim_runtime/vimrcs<cr>
autocmd! bufwritepost ~/.vim_runtime/vimrcs/* source ~/.vimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" change mode
inoremap <silent> jj <ESC>

" moving utils
inoremap <C-a> <Esc>I
inoremap <C-e> <Esc>A
noremap <C-a> <Esc>^
noremap <C-e> <Esc>$
noremap j gj
noremap k gk

" editing utils
" cs{from}{to}
noremap ci( t)ci)
noremap ci{ t}ci}
noremap ci[ t]ci]
noremap ci< t>ci>

" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
nmap <Leader>v V

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)


" matchit.vim
" jump to bracket
source $VIMRUNTIME/macros/matchit.vim
nmap H [%
nmap L ]%

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumcrann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map , to / (search) and ,, to ? (backwards search)
map , /
map ,, ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>tt :tabr<cr>
map <leader>l :tabnext<cr>
map <leader>h :tabprevious<cr>

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Serarch and replace 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Terminal mode mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" terminal mode mapping
tnoremap <ESC> <C-\><C-n>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
map <leader>q :e ~/buffer.md<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/.vim_runtime/README.md<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>


