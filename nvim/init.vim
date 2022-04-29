:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
":set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'			" Status Bar
Plug 'https://github.com/ap/vim-css-color'					" vim Themes
Plug 'https://github.com/rafi/awesome-vim-colorschemes'     " vim themes
Plug 'https://github.com/ryanoasis/vim-devicons'			" icons
Plug 'https://github.com/terryma/vim-multiple-cursors'		" multible courses

Plug 'https://github.com/tpope/vim-commentary'				" Comment(gcc)(gc)
Plug 'https://github.com/tpope/vim-surround'				" '' {} [] () `etc
Plug 'https://github.com/neoclide/coc.nvim'					" auto completoin
Plug 'https://github.com/preservim/tagbar'					" navigate code

Plug 'https://github.com/preservim/nerdtree'				" explorer
Plug 'https://github.com/tc50cal/vim-terminal'				" vim terminal

call plug#end()

" ENCODER
set encoding=UTF-8

let g:NERDTreeDirArrowExpandable="⮞"	" fix symblos working directory
let g:NERDTreeDirArrowCollapsible="⮟"	" fix symbols working directory

" SET THEME (SCHEME) "
:colorscheme afterglow
" Air-Line $StatusBar "
let g:airline_powerline_fonts = 1

if !exists('g:airline_sysmbols')
	let g:airline_symbols = {}
endif


" airline symbols (NOT RQUIRED NOW) 
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


" SET KEYBINDINGS FOR NERDTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-1> :call CocActionAsync('jumpDefinition')<CR>

" Toggle Tagbar -> virutalizer code
nmap <F8> :TagbarToggle<CR>

" TABS OPERATION KEYMAPS
nnoremap <C-Insert> :tabnew<CR>
nnoremap <C-Delete> :tabclose<CR>
noremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
nnoremap tn :tabnew<CR>


:set completeopt-=preview				" for no previews

