" Unmap the arrow keys
 no <down> <Nop>
 no <left> <Nop>
 no <right> <Nop>
 no <up> <Nop>

 ino <down> <Nop>
 ino <left> <Nop>
 ino <right> <Nop>
 ino <up> <Nop>
" Add syntax highlight
 syntax on
 filetype plugin indent on
 syntax enable
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" set side numbers and width
 set number
 set numberwidth=2
" set foreground colog and background color 
 :highlight Normal ctermfg=green ctermbg=black
" set background=dark
" status line config
 set laststatus=2
 set statusline=
 set statusline+=\ %f
" disable mouse actions
 set mouse -=a
