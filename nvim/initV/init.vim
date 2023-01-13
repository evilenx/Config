call plug#begin('~/.config/nvim/plugged')

	Plug 'nvim-telescope/telescope.nvim'
  "theme - gruvbox 
	Plug 'gruvbox-community/gruvbox'
  	Plug 'nvim-lua/plenary.nvim'
    
    "Telescope 
	  Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    

    "Themes
	  Plug 'bluz71/vim-moonfly-colors'
    Plug 'patstockwell/vim-monokai-tasty'
    Plug 'bluz71/vim-nightfly-colors'
    Plug 'laniusone/kyotonight.vim'

      "NerdTree
    Plug 'preservim/nerdtree'

  
call plug#end()



"theme
colorscheme moonfly 
set background=dark
"colorscheme nightfly 









set number
set relativenumber

"Configuración de Geoghot
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set ruler

"configuración de Theprimeagen

"permanene el cursor en tipo bloque
set guicursor=

"Esto lo quita con noh
set nohlsearch

"Esto resalta el texto en amarillo búsqueda
set hlsearch

"Esto resaltará el texto a medida que vaya escribiendo
set incsearch

"Mantiene el archivo sin guardar en segundo plano, ocupará memory
set hidden

"Esto hace que siga la línea con el texto
set nowrap

"Esto hace que el scroll tenga 8 líneas y todo está más centrado
set scrolloff=8

