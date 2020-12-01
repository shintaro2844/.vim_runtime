" for only neovim. in pyenv virtualenv named 'neovim2'
if has('nvim') && isdirectory( $PYENV_ROOT."/versions/neovim2" )
     let g:python_host_prog = $PYENV_ROOT.'/versions/neovim2/bin/python'
endif
" for only neovim. in pyenv virtualenv named 'neovim3'
if has('nvim') && isdirectory( $PYENV_ROOT."/versions/neovim3" )
     let g:python3_host_prog = $PYENV_ROOT.'/versions/neovim3/bin/python'
endif

if exists('$TMUX')
    if has('nvim')
        set termguicolors
    else
        set term=screen-256color
    endif
endif

if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect 
    au BufNewFile,BufRead *.jinja set syntax=htmljinja
    au BufNewFile,BufRead *.xyz   set ft=xyz
    au BufNewFile,BufRead *.mako  set ft=mako
    au BufNewFile,BufRead *.ts    set ft=typescript
augroup END
