"Enable pathogen
execute pathogen#infect()
" terminals so far
" set term=xterm-256color
" set term=xterm
" set term=ansi
set termencoding=utf-8
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
set background=dark

colorscheme solarized

set t_Co=256
let g:solarized_termcolors=256
"
"
set nocompatible
"Highlight is on
syntax on
set backspace=2
set expandtab
set tabstop=4
set shiftwidth=4
"set autoindent
"set cindent
set number
set ruler
"set mouse=a
"colorscheme delek
nnoremap <C-t> :tabnew<CR>
nnoremap <C-n> :tabprevious<CR>
nnoremap <C-m> :tabnext<CR>

"enable  numpad support
map <Esc>Oq 1
map <Esc>Or 2
map <Esc>Os 3
map <Esc>Ot 4
map <Esc>Ou 5
map <Esc>Ov 6
map <Esc>Ow 7
map <Esc>Ox 8
map <Esc>Oy 9
map <Esc>Op 0
map <Esc>On .
map <Esc>OQ /
map <Esc>OR *
map <kPlus> +
map <Esc>OS -
map <Esc>OM <CR>
map! <Esc>Oq 1
map! <Esc>Or 2
map! <Esc>Os 3
map! <Esc>Ot 4
map! <Esc>Ou 5
map! <Esc>Ov 6
map! <Esc>Ow 7
map! <Esc>Ox 8
map! <Esc>Oy 9
map! <Esc>Op 0
map! <Esc>On .
map! <Esc>OQ /
map! <Esc>OR *
map! <kPlus> +
map! <Esc>OS -
map! <Esc>OM <CR>

" ctrlp addon settings
let g:ctrlp_map = '<c-p>'
set runtimepath^=~/.vim/bundle/ctrlp.vim

" make mouse scrolling work in terminal vim!
"map <M-Esc>[62~ <ScrollWheelUp>
"map <M-Esc>[63~ <ScrollWheelDown>
"map <M-Esc>[64~ <S-ScrollWheelUp>
"map <M-Esc>[65~ <S-ScrollWheelDown>
"map! <M-Esc>[62~ <ScrollWheelUp>
"map! <M-Esc>[63~ <ScrollWheelDown>
"map! <M-Esc>[64~ <S-ScrollWheelUp>
"map! <M-Esc>[65~ <S-ScrollWheelDown>

"Enable spell check
set spell
hi clear SpellBad
" hi SpellBad cterm=underline ctermbg=darkred ctermfg=white
hi SpellBad cterm=underline 
" ctermbg=darkred ctermfg=white

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\
set encoding=utf-8
"set cursorline
"hi CursorLine   cterm=underline 
"set cursorcolumn
"hi CursorColumn  cterm=underline 
"ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"more natural split
set splitright
set splitbelow
"better command completion
set wildmenu
"show previous command
set showcmd
"highlight search
set hlsearch
"case insensitive search
set ignorecase
"Always displays the status line
set laststatus=2
"instead of beeping 
set visualbell
"set cmdheight=2
set nostartofline
set backspace=indent,eol,start
nnoremap <C-L> :nohl<CR><C-L>

set wrap linebreak
" If the current buffer has never been saved, it will have no name,
" " call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified 
                            \|    if empty(bufname('%'))
                            \|        browse confirm write
                            \|     else
                            \|         confirm write
                            \|      endif
                            \|endif

nnoremap <C-S> :Update<CR>
inoremap <C-S> <ESC> :Update<CR> 
nnoremap <C-Q> :q <CR>
inoremap <C-Q> <ESC> :q <CR> 

function s:Cursor_Moved()
  let cur_pos = winline()
  if g:last_pos == 0
    set cul
    let g:last_pos = cur_pos
    return
  endif
  let diff = g:last_pos - cur_pos
  if diff > 1 || diff < -1
    set cul
  else
    set nocul
  endif
  let g:last_pos = cur_pos
endfunction
autocmd CursorMoved,CursorMovedI * call s:Cursor_Moved()
let g:last_pos = 0
set shortmess=at
nnoremap <C-i> :!./run &<CR>
set nofoldenable

if version >= 730
   set conceallevel=0
   autocmd FileType * setlocal conceallevel=0
endif 
let g:tex_conceal = ""

autocmd FileType tex :NoMatchParen
au FileType tex setlocal nocursorline
set synmaxcol=400
