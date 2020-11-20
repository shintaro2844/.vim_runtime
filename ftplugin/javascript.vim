""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
call JavaScriptFold()
setl fen
setl nocindent

imap <C-t> $log();<esc>hi
imap <C-a> alert();<esc>hi

inoremap <buffer> $r return
inoremap <buffer> $f // --- PH<esc>FP2xi

function! JavaScriptFold()
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction
