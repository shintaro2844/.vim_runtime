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
