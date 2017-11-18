"This is the basic neovim init.vim file by Antonio

"Display True Color
set termguicolors "I turned this off because solarized looks better with
"the gnome terminal in solarized, but this causes cursorcolum to show-up as
"underline.

"Turn syntax highlighting on
syntax enable

"Color Theme
"colorscheme OceanicNext
"colorscheme OceanicNextLight
colorscheme solarized

"Set Background Color
"set background=dark
set background=light

"Not compatible with vi
set nocompatible

"Show line numbers
set number

"Highlight Line and Column
set cursorline
set cursorcolumn 

"The following lines were assimilated from nicknisi init.vim file

"remap esc to something easier on the digits, CapsLock is another option
inoremap jk <esc>
highlight Comment cterm=italic
highlight htmlArg cterm=italic
highlight xmlAttrib cterm=italic
highlight Type cterm=italic
highlight Normal ctermbg=none

set wrap                    " turn on line wrapping
set wrapmargin=8            " wrap lines when coming within n characters from side
set linebreak               " set soft wrapping
set showbreak=…             " show ellipsis at breaking

set autoindent              " automatically set indent of new line
set smartindent
"End of assimmilated content

"vim-plug
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
" Initialize plugin system
call plug#end()

" Use the pre-patched fonts, I already had powerline and powerline fonts
" installed; displays the status line with the arrows instead of the
" rectangles
let g:airline_powerline_fonts = 1

