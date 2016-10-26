"  Показывать номера строк
set number

"  Цветовая схема
colorscheme gruvbox

" Включить подсветку синтаксиса
syntax on

" Поиск в процессе набора
set incsearch

" Подсвечивание результатов поиска
set hlsearch

" умная зависимость от регистра. Детали `:h smartcase`
set ignorecase
set smartcase

" Кодировка текста по умолчанию utf8
set termencoding=utf8

" Показывать положение курсора всё время.
set ruler

" Показывать незавершённые команды в статусбаре
set showcmd

" Фолдинг по отсупам
set foldenable
set foldlevel=100
set foldmethod=indent

" Поддержка мыши
set mouse=a
set mousemodel=popup

" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden

" Сделать строку команд высотой в одну строку
set ch=1

" Скрывать указатель мыши, когда печатаем
set mousehide

" Включить автоотступы
set autoindent

" Не переносить строки
"set nowrap

" Преобразование Таба в пробелы
set expandtab

" Размер табуляции по умолчанию
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Включаем "умные" отступы, например, авто отступ после `{`
set smartindent

" Отображение парных символов
set showmatch

" Указание размеров окна редактора по умолчанию
"set lines=50
"set columns=140

" Навигация с учетом русских символов, учитывается командами следующее/предыдущее слово и т.п.
set iskeyword=@,48-57,_,192-255

" Подсвечивать линию текста, на которой находится курсор
set cursorline
highlight CursorLine guibg=lightblue ctermbg=lightgray
highlight CursorLine term=none cterm=none

" Увеличение размера истории
set history=200

" Дополнительная информация в строке состояния
set wildmenu

" Настройка отображения специальных символов
set list listchars=tab:→\ ,trail:·

" Включение сторонних плагинов
filetype plugin on

" Цвета для Neovim
set termguicolors
set background=dark
"set t_Co=256
"
""  nerdtree
map <C-n> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-x> :tabnew<CR>

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"""""""""" VIM PLUG""""""""""
call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'morhetz/gruvbox'
call plug#end()

