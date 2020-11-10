""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self
au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako
" pymode
let g:pymode_virtualenv = 1
let g:pymode_virtualenv_path = $VIRTUAL_ENV


""""""""""""""""""""""""""""""
" => C/C++ section
""""""""""""""""""""""""""""""
au FileType c,cpp setlocal noexpandtab tabstop=4 shiftwidth=4
au FileType c,cpp let &colorcolumn=join(range(81,999),",")
au FileType c,cpp hi ColorColumn ctermbg=235 guibg=#2c2d27
au FileType c,cpp set list listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <C-t> $log();<esc>hi
au FileType javascript imap <C-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return
au FileType javascript inoremap <buffer> $f // --- PH<esc>FP2xi

function! JavaScriptFold()
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction

""""""""""""""""""""""""""""""
" => Shell section
""""""""""""""""""""""""""""""
if exists('$TMUX')
    if has('nvim')
        set termguicolors
    else
        set term=screen-256color
    endif
endif

""""""""""""""""""""""""""""""
" => Markdown
""""""""""""""""""""""""""""""
"let vim_markdown_folding_disabled = 1
"let g:vim_markdown_conceal = 0

""""""""""""""""""""""""""""""
" => Common lisp
""""""""""""""""""""""""""""""
"let g:lisp_rainbow=1
"let g:slimv_swank_cmd = '!tmux new-window "sbcl --load ~/.vim_runtime/plugged/slimv/slime/start-swank.lisp"'
