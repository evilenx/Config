set number
set relativenumber
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set hlsearch
set ruler
highlight Comment ctermfg=green


"cursor modo bloque
set guicursor=


call plug#begin()
Plug 'preservim/nerdtree'
call plug#end()


colorscheme jellybeans


let g:highlightedyank_highlight_duration = 500
noremap v 


filetype plugin indent on

set exrc
map  :NERDTreeToggle
autocmd FileType nerdtree setlocal number


autocmd FileType nerdtree setlocal relativenumber


 "abrir Nerdtree con ctrl + . 
nnoremap <C-.> :NERDTreeToggle<CR>

" Map <Esc><Esc> in terminal mode to exit to normal mode, making it easier to leave the embedded terminal.
tnoremap <Esc><Esc> <C-\><C-n>


" Custom statusline colors: black background + white/grey font for :term
" splits
hi StatusLine        cterm=NONE ctermfg=15  ctermbg=0
hi StatusLineNC      cterm=NONE ctermfg=8   ctermbg=0
hi StatusLineTerm    cterm=NONE ctermfg=15  ctermbg=0
hi StatusLineTermNC  cterm=NONE ctermfg=8   ctermbg=0


