set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" YCM-core
Plugin 'ycm-core/YouCompleteMe'

" Emmet
Plugin 'mattn/emmet-vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
Plugin 'flazz/vim-colorschemes'
Plugin 'mileszs/ack.vim'


Plugin 'inkarkat/vim-CompleteHelper'
Plugin 'inkarkat/vim-ingo-library'

let g:ackprg = 'ag --nogroup --nocolor --column' "This command change ack search to ag search. it's much powerful

nmap <leader>a :Ack 
nmap <leader>A :Ack <cword><CR>

" Markdown. The tabular plugin must come before vim-markdown 

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
set nofoldenable

Plugin 'MarcWeber/vim-addon-mw-utils'

Plugin 'EntryComplete'

Plugin 'iamcco/mathjax-support-for-mkdp' "Plugin that can help me edit .md file with browser
Plugin 'iamcco/markdown-preview.vim' "Plugin that can help me edit .md file with browser

let g:EntryComplete_Sources = glob('~/Nextcloud/sales/txt/projects/*.txt', 0, 1)

" ==== helpers
Plugin 'vim-scripts/L9'

" ==== File tree
Plugin 'scrooloose/nerdtree'

" ==== Completion
"Plugin 'Valloric/YouCompleteMe'

" ==== Git
"gitgutter - Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
"Plugin 'airblade/vim-gitgutter'

"vim-fugitive - best Git wrapper of all time.
"Plugin 'tpope/vim-fugitive'

" ==== syntax helpers
" Syntastic is a syntax checking plugin for Vim created by Martin Grenfell. It runs files through external syntax checkers and displays any resulting errors to the user. This can be done on demand, or automatically as files are saved.
"Plugin 'scrooloose/syntastic'

" Surround.vim is all about surroundings parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.
Plugin 'tpope/vim-surround'

Plugin 'cakebaker/scss-syntax.vim'

"Plugin 'othree/yajs.vim'
"Plugin 'mitsuhiko/vim-jinja'
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'ap/vim-css-color'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'moll/vim-node'

" ==== moving / searching
Plugin 'easymotion/vim-easymotion'
Plugin 'ctrlpvim/ctrlp.vim'

" ==== snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'powerline/powerline'

"



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




" Настройки табов для Python, согласно рекоммендациям
set tabstop=4 
set shiftwidth=4
set smarttab
set expandtab "Ставим табы пробелами
set softtabstop=4 "4 пробела в табе
" Автоотступ
set autoindent
" Подсвечиваем все что можно подсвечивать
let python_highlight_all = 1
" Включаем 256 цветов в терминале, мы ведь работаем из иксов?
" Нужно во многих терминалах, например в gnome-terminal
set t_Co=256

" Перед сохранением вырезаем пробелы на концах (только в .py файлах)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
" В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

syntax on "Включить подсветку синтаксиса

set nu "Включаем нумерацию строк
set mousehide "Спрятать курсор мыши когда набираем текст
set mouse=a "Включить поддержку мыши
set termencoding=utf-8 "Кодировка терминала
set novisualbell "Не мигать 
set t_vb= "Не пищать! (Опции 'не портить текст', к сожалению, нету)
" Удобное поведение backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Вырубаем черточки на табах
set showtabline=0

" Переносим на другую строчку, разрываем строки
set wrap
set linebreak

" Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251

set clipboard=unnamed
set ruler

set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" Выключаем звук в Vim
set visualbell t_vb=

"Переключение табов по CMD+number для MacVim
if has("gui_macvim")
  " Press Ctrl-Tab to switch between open tabs (like browser tabs) to 
  " the right side. Ctrl-Shift-Tab goes the other way.
  noremap <C-Tab> :tabnext<CR>
  noremap <C-S-Tab> :tabprev<CR>

  " Switch to specific tab numbers with Command-number
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tabn 9<CR>
  " Command-0 goes to the last tab
  noremap <D-0> :tablast<CR>
endif

set guifont=Monaco:h18
"colorscheme OceanicNext
"colorscheme blue
colorscheme badwolf
set background=dark

set showtabline=2

if has("autocmd")
    autocmd BufRead *.sql set filetype=mysql      
endif

nmap <C-F5> <Esc>:BufExplorer<cr>
vmap <C-F5> <esc>:BufExplorer<cr>
imap <C-F5> <esc>:BufExplorer<cr>

" F6 - предыдущий буфер
nmap <C-F6> :tabnext<cr>
vmap <C-F6> <esc>:tabnext<cr>i
imap <C-F6> <esc>:tabnext<cr>i
