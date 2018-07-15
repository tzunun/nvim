"This is the basic neovim init.vim file by Antonio

"Display True Color
if (has("termguicolors"))
 set termguicolors
endif

"Turn syntax highlighting on
syntax enable

"Show the matching part of the pair for [] {} adn ()
set showmatch

" Tabs
set tabstop=2

"Color Theme
"OceanicNext Color Theme
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext
"colorscheme OceanicNextLight
"
"Solarized Color Theme
"colorscheme solarized

"Set Background Color
"set background=light
"set background=dark

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

