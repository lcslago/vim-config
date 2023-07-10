"plugins instalados pelo vim-plug
call plug#begin()
	"tema atual do vim
	Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
	"árvore de diretórios (NERDTree)
	Plug 'preservim/nerdtree'
call plug#end()

"Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

"Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" tamanho da identação
set tabstop=2

" identifica o tipo de arquivo para identação
filetype plugin indent on

" para colorir elementos do código
syntax on
colorscheme moonfly
set background=dark

" distância de cada backspace
set shiftwidth=2

" numerar linhas
set number

" calcular a distância das linhas
set relativenumber

" feedback visual enquanto busca
set incsearch

" destaque visual nos resultados de buscas
set hlsearch
