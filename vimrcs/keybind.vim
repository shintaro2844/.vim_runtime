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

" Remap VIM 0 to first non-blank character
map 0 ^
map 4 $

" editing utils
" cs{from}{to}
noremap ci( t)ci)
noremap ci{ t}ci}
noremap ci[ t]ci]
noremap ci< t>ci>

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

" sneak motions
" 2-character Sneak (default)
nmap s <Plug>Sneak_s
nmap S <Plug>Sneak_S
" visual-mode
xmap s <Plug>Sneak_s
xmap S <Plug>Sneak_S
" operator-pending-mode
omap s <Plug>Sneak_s
omap S <Plug>Sneak_S
" 1-character enhanced 'f'
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
" visual-mode
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
" operator-pending-mode
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
" 1-character enhanced 't'
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
" visual-mode
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
" operator-pending-mode
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T
" repeat motion
map ; <Plug>Sneak_;
map <leader>; <Plug>Sneak_,


" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
nnoremap Y y$

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
nmap <Leader>v V

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumcrann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Serarch and replace
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

""""""""""""""""""""""""""""""
" => matchitl.vim
""""""""""""""""""""""""""""""
" jump to bracket
source $VIMRUNTIME/macros/matchit.vim
nmap H [%
nmap L ]%


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map , to / (search) and / to ? (backwards search)
noremap , /
noremap / ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Split window
map <C-s> <C-W>v
map <C-x> <C-W>s

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

" Cycle through buffers
nnoremap <Leader>l :bnext<CR>
nnoremap <Leader>h :bprevious<CR>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>tt :tabr<cr>
noremap <leader><TAB> :tabnext<cr>
noremap <leader><TAB><TAB> :tabprevious<cr>

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
