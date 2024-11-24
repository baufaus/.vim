set number
:syntax on

" for changing cursor when going into insert mode
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_view_method = 'skim'


call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'lervag/vimtex'
Plug 'lervag/vimtex', { 'tag': 'v2.15' }
Plug 'neovimhaskell/haskell-vim'
call plug#end()
