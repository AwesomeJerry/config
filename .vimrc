" ========== General Config ==========
syntax enable
" colorscheme darcula	
" colorscheme vendetta
colorscheme onedark

set autoindent											" Auto indent, enter Paste Mode `:set paste`
set background=dark									" Dark background
set number													" Line number
set enc=utf8												" Encoding
set t_Co=256												" Support 256 color
set expandtab												" Insert space characters whenever the tab key is pressed
set tabstop=2												" Tab size
set shiftwidth=2										" Shift width size
set backspace=2											" Fix backspace delete line
set autochdir 											" auto cd curent dir.
set laststatus=2										" always show status line
set relativenumber									" show line number in relative mode
set conceallevel=0									" Disable auto-hiding column in .json
set encoding=utf-8  								" The encoding displayed.
set fileencoding=utf-8  						" The encoding written to file.

" ========== Key Map ==========  

" ========== vim-json ==========
let g:vim_json_syntax_conceal = 0		" Disable auto-hide feature in json-vim

" ========== vim-jsx ==========   
let g:jsx_ext_required = 0					" ignore .jsx extension

" ========== vim-javascript ==========
let javascript_enable_domhtmlcss = 1 " Enables HTML/CSS syntax highlighting in your JavaScript file.

" ========== NERDTree ========== 
autocmd VimEnter * NERDTree 				" Enable NERDTree when Vim's open
map <F2> :NERDTreeToggle<CR>				" Using F2 to toggle NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif   " Close Vim if NERDTree is the last window

" ========== vim-airline ========== 
let g:airline#extensions#tabline#enabled = 1 " Automatically displays all buffers when there's only one tab open.
let g:airline_section_c = '%F'			" Show all path of the file

" ========== syntastic ========== 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" ========== Colorizer ==========
let g:colorizer_auto_color = 1			" Automatic loading 

" ========== vim-indent-guides ========== 
let g:indent_guides_enable_on_vim_startup = 1	" Enable indent guide when vim start

" ========== Plugins ==========
call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'				" A code-completion engine for Vim
Plug 'mxw/vim-jsx'									" React JSX syntax highlighting and indenting for vim
Plug 'pangloss/vim-javascript'			" Vastly improved Javascript indentation and syntax support in Vim.
Plug 'isRuslan/vim-es6'							" List of JavaScript ES6 snippets and syntax highlighting for vim.
Plug 'scrooloose/nerdtree'					" A tree explorer plugin for vim.
Plug 'bling/vim-airline'						" lean & mean status/tabline for vim that's light as air
Plug 'kien/ctrlp.vim'								"	Fuzzy file, buffer, mru, tag, etc finder.
Plug 'tpope/vim-fugitive'						" a Git wrapper so awesome, it should be illegal
Plug 'scrooloose/syntastic'					" Syntax checking hacks for vim	
Plug 'chrisbra/Colorizer'						" color hex codes and color names
Plug 'KabbAmine/vCoolor.vim'				"	Simple color selector/picker plugin for Vim.
Plug 'wavded/vim-stylus'						" Syntax Highlighting for Stylus
Plug 'nathanaelkane/vim-indent-guides'	" A Vim plugin for visually displaying indent levels in code
Plug 'digitaltoad/vim-jade'					" Vim Jade template engine syntax highlighting and indention
Plug 'mustache/vim-mustache-handlebars' " mustache and handlebars mode for vim

call plug#end()
