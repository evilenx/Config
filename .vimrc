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


" Nerdtree 
" Move back a word with Ctrl-b
cnoremap <C-b> <S-Left>
" Move forward a word with Ctrl-w (replaces delete word)
cnoremap <C-w> <S-Right>
" Move to start with Ctrl-a
cnoremap <C-a> <Home>
" Delete word forward with Ctrl-d
cnoremap <C-d> <S-Right><C-w>
" Delete the entire line (if Ctrl-u feels awkward)
cnoremap <C-k> <C-u>


" Tabs colors 
" 1. coloress: Fondo negro absoluto y sin decoraciones (líneas)
hi TabLineFill  term=NONE cterm=NONE gui=NONE ctermbg=Black guibg=Black

" Pestañas inactivas: Texto blanco, sin subrayado
hi TabLine      term=NONE cterm=NONE gui=NONE ctermbg=Black ctermfg=White guibg=Black guifg=White

" Pestaña activa: Nombre en rojo, sin subrayado
hi TabLineSel   term=NONE cterm=NONE gui=NONE ctermbg=Black ctermfg=Red   guibg=Black guifg=#FF0000 gui=bold

" Números siempre verdes, sin subrayado
hi TabNum       term=NONE cterm=NONE gui=NONE ctermbg=Black ctermfg=Green guibg=Black guifg=#00FF00

function! MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    let tabnr = i + 1
    
    " Pintar el número en VERDE
    let s .= '%#TabNum# ' . tabnr . ' '
    
    " Si es la pestaña actual, usar rojo (TabLineSel), si no, blanco (TabLine)
    if tabnr == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif

    " Nombre del archivo (sin líneas ni separadores basuras extra)
    let buflist = tabpagebuflist(tabnr)
    let winnr = tabpagewinnr(tabnr)
    let name = fnamemodify(bufname(buflist[winnr - 1]), ':t')
    if name == '' | let name = '[Sin nombre]' | endif
    let s .= name . '  ' " Espacio doble para separar pestañas
  endfor
  
  let s .= '%#TabLineFill#'
  return s
endfunction

set tabline=%!MyTabLine()
