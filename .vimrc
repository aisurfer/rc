" игнорировать регистр при поиске
set ic
" подсвечивать поиск
"set hls
" использовать инкрементальный поиск
"set is
" ширина текста 
"set textwidth=70
" минимальная высота окна пусть будет 0 (по умолчанию - 1)
"set winminheight=0
" всегда делать активное окно максимального размера
set noequalalways
"set winheight=9999
" установить шрифт Courier New Cyr
"set guifont=courier_new:h10:cRUSSIAN
" настраиваю для работы с русскими словами (чтобы w, b, * понимали
" русские слова)
set iskeyword=@,48-57,_,192-255
" задать размер табуляции в четыре пробела
set ts=4
set sw=4
syntax on
set mouse=a
set ttymouse=xterm2

set tabstop=4 shiftwidth=4 expandtab
set backspace=indent,eol,start

colorscheme peachpuff 
hi Search term=reverse ctermbg=3 ctermfg=0 guibg=Gold2
set laststatus=2

filetype on
filetype indent on
filetype plugin on
set hlsearch

"чтобы netrw открывал файл и оставлял курсор в проводнике
let g:netrw_preview = 1

map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >

function! TwiddleCase(str)
    if a:str ==# toupper(a:str)
        let result = tolower(a:str)
    elseif a:str ==# tolower(a:str)
        "let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
        " if you want to change ABC_DED_GH to AbcDefGh use:
        let result = substitute(a:str,'\([a-zA-Z]\+\)', '\u\1', 'g')
    else
        let result = toupper(a:str)
    endif
    return result
endfunction
vnoremap ~ ygv"=TwiddleCase(@")<CR>Pgv

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>

map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --python-kinds=-i --fields=+iaS --extra=+q --exclude=*.js .<CR>
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" for json editing
au! BufRead,BufNewFile *.json set filetype=json 
augroup json_autocmd
    autocmd!
    autocmd FileType json set autoindent
    autocmd FileType json set formatoptions=tcq2l
    autocmd FileType json set expandtab
    autocmd FileType json set foldmethod=syntax
augroup END 

" autocomplete same dir as edited file
cabbr <expr> %% expand('%:p:h')
cabbrev t tabnew
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

au BufRead,BufNewFile *.mqh set filetype=c
au BufRead,BufNewFile *.mq5 set filetype=c
