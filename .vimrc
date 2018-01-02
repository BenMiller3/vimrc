set nocompatible
set backspace=indent,eol,start
syntax on
colorscheme industry

if &term =~ '256color'
  " Disable Background Color Erase - fix color schemes
  " when vim is used insied tmux and GNU screen
  set t_ut=
endif
