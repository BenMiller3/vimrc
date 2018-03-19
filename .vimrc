" Plugins
call plug#begin('~/.vim/plugged')
Plug 'bundle/gundo.vim'
Plug 'bundle/ctrlp.vim'
Plug 'bundle/vim-python-pep8-indent'
call plug#end()
" PLUGIN NOTES:
" Run :PlugUpdate to update plugins
" Delete or comment out Plug commands to remove plugins.
" Run :PlugClean to detect and remove undeclared plugins.

" VIM PLUGINS
set runtimepath^=~/.vim/bundle/gundo.vim    " Undo with edit history
set runtimepath^=~/.vim/bundle/ctrlp.vim    " Full path fuzzy buffer finder

" COLORS
colorscheme badwolf
syntax enable

" SPACES & TABS
set expandtab	        " Tabs are spaces
set tabstop=4	        " Number of visual spaces per TAB
set softtabstop=4       " Number of spaces in tab when editing
set shiftwidth=4

" UI CONFIG
" set number            " show line numbers
" set showcmd           " show command in bottom bar
set cursorline          " highlights the current line
" filetype indent on    " load filetype-specific indent files -- allows
" loading of language specific indentation
set wildmenu            " visual autocomplete for command menu
"" set lazyredraw          " Redraw only when it needs to 
set showmatch           " Highlight matching for brackets [{()}]

" SEARCHING
set incsearch           " Search as characters are entered
set hlsearch            " Highlight search matches
                        " Turn off search highlighting below
nnoremap <leader><space> :nohlsearch<CR>  

" Compatibility Fix
set nocompatible
set backspace=indent,eol,start
if &term =~ '256color'
    set t_ut=
endif

" FOLDING -- Temporarily hide parts of your file leaving only outline of major
" parts visible. A fold can be created in NM by typing zf{motion} - LEARN this
" later. Folding is a good VIM tip to use for more efficient use.
"" set foldenable          " Enable folding
"" set foldlevelstart=10   " Open most folds by default
" foldlevelstart si the starting fold lvl for opening a new buffer. If == 0
" then all folds will be closed. At 99 - guarantee all folds are always open.
" So setting it to 10 ensures only very nested blocks are folded when opening
" a buffer.
"" set foldnestmax=10      " Set the maximum nested fold level to 10
" nnoremap <space> za   " Space open/closes folds -- should leave space as
" this. Rather than having it on nohl. Just run :noh for that instead.
"" set foldmethod=indent   " Fold based on indent level - super useful w/ Python
                        " Type op  slow if you want to type that string.
                        " Otherwise it's a good escape substitute
inoremap jk <esc>       
" Change ,u to super undo (with a graphical line history)
nnoremap <leader>u :GundoToggle<CR>

" All future nonsense from here on out
" CtrlP Plugin Extra Usage Settings
" let g:ctrlp_match_window = 'bottom,order:ttb'
" let g:ctrlp_switch_buffer = 0
" let g:ctrlp_working_path_mode = -
" let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" Above gives a _noticeable_ improvement to ctrlp speed

" TMUX -- TODO: Learn TMUX !!!!!!!!!!!!!
" " allows cursor change in tmux mode
" if exists('$TMUX')
"   let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"   let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
" else
"   let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"   let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" endif
