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
