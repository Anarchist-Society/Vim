""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ========================================================================== 
" 1. CONFIGURACIÓN GENERAL
" ==========================================================================

" Detectar tipo de fichero y habilitar plugins 
filetype on
filetype plugin on
filetype indent on

" Interfaz
syntax on " Activar resalto de sintaxis
" set number " Mostrar número de líneas absoluto
" set relativenumber " Mostrar número de líneas relativo
set scrolloff=10  " Mantener 10 líneas de margen vertical al desplazarse 
set linebreak " Evita cortar palabras al hacer wrap
set termguicolors " Mejor soporte de colores
set background=dark " Mejora soporte de colores en fondos oscuros

" =========================
" Tabs y espacios
" =========================
set shiftwidth=4 " Indent automático de 4 espacios
set tabstop=4 " Tab representa 4 espacios
set expandtab " Convertir tabs a espacios

" =========================
" Búsqueda
" =========================
set incsearch " Búsqueda incremental
set hlsearch " Resaltar coincidencias
set ignorecase " Ignorar mayúsculas
set smartcase " Sensible a mayúsculas si se usan
set showmatch " Resaltar paréntesis coincidentes

" =========================
" Backup y undo
" =========================
set nowritebackup " No crear backup al guardar
set noswapfile " No crear swap
set history=10 " Historial de comandos

if version >= 703
	set undodir=~/.vim/backup " Directorio para fichero de undo
	set undofile " Guardar undo persistentemente
	set undoreload=10000 " Máx. deshacer/rehacer
endif

" =========================
" Autoreload externo
" =========================
set autoread " Aplicar cambios si se edita de forma externa

" =========================
" Wildmenu (autocompletado)
" =========================
set wildmode=list:longest,full
set wildignore=*.out,*.class,*.pdf

" ==========================================================================
" 2. PLUGINS (vim-plug)
" ==========================================================================
call plug#begin('~/.vim/plugged')

" Herramientas
Plug 'dense-analysis/ale' " Linter en tiempo real
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Autocompletado + LSP
Plug 'preservim/nerdtree' " Explorador de ficheros
Plug 'mhinz/vim-startify' " Pantalla de inicio
Plug 'airblade/vim-gitgutter' " Muestra iconos de git en ficheros
Plug 'Xuyuanp/nerdtree-git-plugin' " Muestra iconos de git en NERDTree
Plug 'https://github.com/wolandark/vim-live-server.git' " Habilitar Live-Server
Plug 'mattn/emmet-vim' " Expansión de abreviaciones HTML/CSS (Emmet)
Plug 'AndrewRadev/tagalong.vim'

" Apariencia
Plug 'gerardbm/vim-atomic' " Colorscheme
Plug 'gerardbm/vim-cosmic' " Colorscheme
Plug 'ghifarit53/tokyonight-vim' " Colorscheme
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Habilita colores en NERDTree e iconos de vim-devicons
Plug 'ryanoasis/vim-devicons' " Añade iconos para Vim
call plug#end()

" ==========================================================================
" 3. CONFIGURACIÓN DE PLUGINS
" ==========================================================================

" ===============================
" Tema
" ===============================
" colorscheme tokyonight" Activar theme
colorscheme atomic
AtomicOceanLC

" ===============================
" NERDTree
" ===============================
let g:NERDTreeWinPos = 'right' " Abrir NERDTree a la derecha

" Auto-cerrar Vim si NERDTree es la única ventana que queda en la única pestaña
autocmd BufEnter *
            \ if tabpagenr('$') == 1 && winnr('$') == 1
            \    && exists('b:NERDTree') && b:NERDTree.isTabTree()
            \ |  call feedkeys(":quit\<CR>:\<BS>")
            \ | endif

" Auto-cerrar Vim si NERDTree es la única ventana
autocmd BufEnter *
            \ if winnr('$') == 1 && exists('b:NERDTree')
            \ && b:NERDTree.isTabTree()
            \ | call feedkeys(":quit\<CR>:\<BS>")
            \ | endif

" ===============================
" vim-startify
" ===============================
" Abrir Startify + NERDTree
let g:startify_change_to_dir = 0
autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            \ |   NERDTree
            \ |   wincmd w
            \ | endif

" Bookmarks
let g:startify_bookmarks = [{'c': '~/.vimrc'}]

" ===============================
" vim-nerdtree-syntax-highlight
" ===============================
" Disable default colors for folder and file icons
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

" Colors applied in names of files
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" ==========================================================================
" 4. MAPPINGS
" ==========================================================================
" Leader key
let mapleader = ","
nnoremap <LEADER>w :w<ENTER>
nnoremap <LEADER>n :NERDTreeToggle<CR>
nnoremap <LEADER>f :NERDTreeFind<CR>
nmap <silent> <leader>ca <Plug>(coc-codeaction-line)
nnoremap <LEADER>t :terminal<CR>
nnoremap <LEADER>tr :terminal ./mvnw spring-boot:run<CR>

" Insert mode
inoremap jj <ESC>

" Normal mode
nnoremap <SPACE> :
nnoremap o o<ESC>
nnoremap O O<ESC>

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Window resizing
nnoremap <C-UP> <C-w>+
nnoremap <C-DOWN> <C-w>-
nnoremap <C-LEFT> <C-w>>
nnoremap <C-RIGHT> <C-w><

" ============================================================================
" 5. VIMSCRIPT
" ============================================================================
autocmd FileType html setlocal shiftwidth=2 tabstop=2 expandtab

" ============================================================================
" 6. STATUS LINE
" ============================================================================
set statusline=
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
set laststatus=2
