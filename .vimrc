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
" set side numbers and width
 set number
 set numberwidth=2
" set foreground colog and background color
 :highlight Normal ctermfg=grey ctermbg=darkblue
" status line config
 set laststatus=2
 set statusline=
 set statusline+=\ %f
" settings to replace tab. :retab for replacing tab in existing files.
set tabstop=4
set shiftwidth=4
set expandtab


