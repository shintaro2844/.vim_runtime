""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
syn keyword pythonDecorator True None False self

" for only neovim. in pyenv virtualenv named 'neovim2'
if has('nvim') && isdirectory( $PYENV_ROOT."/versions/neovim2" )
     let g:python_host_prog = $PYENV_ROOT.'/versions/neovim2/bin/python'
endif
" for only neovim. in pyenv virtualenv named 'neovim3'
if has('nvim') && isdirectory( $PYENV_ROOT."/versions/neovim3" )
     let g:python3_host_prog = $PYENV_ROOT.'/versions/neovim3/bin/python'
endif

"if jedi#init_python()
"  function! s:jedi_auto_force_py_version() abort
"    let g:jedi#force_py_version = pyenv#python#get_internal_major_version()
"  endfunction
"  augroup vim-pyenv-custom-augroup
"    autocmd! *
"    autocmd User vim-pyenv-activate-post   call s:jedi_auto_force_py_version()
"    autocmd User vim-pyenv-deactivate-post call s:jedi_auto_force_py_version()
"  augroup END
"endif

let g:ale_linters = {
\   'python': ['flake8'],
\}

let g:ale_fixers = {
\   'python': ['autopep8', 'black', 'isort'],
\}

" vim-lspの各種オプション設定
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_virtual_text_enabled = 1
let g:lsp_signs_error = {'text': '✗'}
let g:lsp_signs_warning = {'text': '‼'}
let g:lsp_signs_information = {'text': 'i'}
let g:lsp_signs_hint = {'text': '?'}

if (executable('pyls'))
    " pylsの起動定義
    augroup LspPython
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
            \ 'name': 'pyls',
            \ 'cmd': { server_info -> ['pyls'] },
            \ 'whitelist': ['python'],
            \})
    augroup END
endif

nnoremap gd :<C-u>LspDefinition<CR>
nnoremap K :<C-u>LspHover<CR>
" nnoremap <Leader>r :<C-u>LspRename<CR>
" nnoremap <Leader>n :<C-u>LspReferences<CR>
" nnoremap <Leader>f :<C-u>LspDocumentDiagnostics<CR>
" nnoremap <Leader>s :<C-u>LspDocumentFormat<CR>
set omnifunc=lsp#complete

augroup LspAutoFormatting
    autocmd!
    autocmd BufWritePre *.py LspDocumentFormatSync
augroup END

let s:pyls_config = {'pyls': {'plugins': {
    \   'pycodestyle': {'enabled': v:true},
    \   'pydocstyle': {'enabled': v:false},
    \   'pylint': {'enabled': v:false},
    \   'flake8': {'enabled': v:true},
    \   'jedi_definition': {
    \     'follow_imports': v:true,
    \     'follow_builtin_imports': v:true,
    \   },
    \ }}}

augroup LspPython
    autocmd!
    autocmd User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': { server_info -> ['pyls'] },
        \ 'whitelist': ['python'],
        \ 'workspace_config': s:pyls_config
        \})
augroup END
