syntax on
filetype plugin on
filetype on
filetype plugin indent on

"colo molokai
colo Monokai
"colo "Clouds Midnight"
"colo darkspectrum
"colo zenburn
"colo sienna
"let g:sienna_style = "dark"

" append a $ to "cw" command.
set cpoptions+=$

set autoread

set guifont=Source\ Code\ Pro\ Light:h13
"set guifont=Menlo_Regular:h12
"set guifont=AurulentSansMono-Regular:h14
"set guifont=Andale_Mono:h14
"set guifont=Droid_Sans_Mono:h13
"set guifont=Consolas:h13
"set guifont=Monaco:h15
"set guifont=TheSansMono-ExtraLight:h14
"set noantialias
"
"Turn off Toolbar;
set guioptions-=T

" fold support
set foldmethod=marker
set foldclose=all

set incsearch
set backspace=start,eol

" Comment support
set formatoptions=trcq

" Auto change dir
"set noautochdir

" No arrow keys!
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Set ruler to show the position,
" Let's view the command !
set ruler
set number
set showcmd

" set noai
" set nosi
" set nocindent

" set autoindent width to 4 spaces (see
" http://www.vim.org/tips/tip.php?tip_id=83)
"set smarttab
"set shiftwidth=4
"set tabstop=4
set tabstop=4 softtabstop=4 shiftwidth=4 "expandtab

" Status bar:
set laststatus=2
set statusline=%F%m%r%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2b]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" Cursor line
set cursorline
set cursorcolumn

" Set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0
set guicursor+=ve:ver35-Cursor
set guicursor+=o:hor50-Cursor
set guicursor+=i-ci:ver25-Cursor
set guicursor+=r-cr:hor20-Cursor
set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" For python expand tabs
autocmd filetype python set expandtab

" Bind <f2> key to running the python interpreter on the currently active
"" file.  (curtesy of Steve Howell from email dated 1 Feb 2006).
"map <f2> :w\|!python %<cr>
"
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS

set hlsearch
set history=500

" vimrc editing shortcuts
" cnoremap <silent> se<cr> vsp $MYVIMRC<cr>
" cnoremap <silent> so<cr> source $MYVIMRC<cr>
" cnoremap <silent> gb<cr> e ++enc=gb2312<cr>

" set fullscreen
"set fu

if has("gui_macvim")
  macmenu File.New\ Tab key=<nop>
  nmap <D-t> <Plug>PeepOpen
end

"nmap <D-r> :call RunCurrentBuffer()<cr>
"function! RunCurrentBuffer()
"	exec "redir @a"
"	exec ":!".&ft." %"
"	exec "redir END"
"endfunction

" for coffeescript:
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

" cnoreabbrev Tabularize Tab
" mappings for Tabularize
nnoremap <Leader>= :Tabularize /=/<Cr>
nnoremap <Leader>: :Tabularize /:/<Cr>

" block comment
vnoremap <d-/> :s/^/\/\//<Cr>

" cocoa dev
au FileType objc nnoremap <d-k> :exec("CocoaDoc ".expand("<cword>"))<Cr>
au FileType objc nnoremap <d-up> :Alternate<Cr>

au! bufwritepost gvimrc source ~/.gvimrc
" Sun  5 Feb 2012 01:44:40 GMT

" for macbookpro
nmap ƒ 
nmap ∫ 
map <D-r> :source ~/.gvimrc<cr>
