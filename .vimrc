set encoding=utf-8
set nocompatible
set hlsearch

set tabstop=2
set expandtab

filetype indent plugin on

imap jk <Esc>

" set the various plugin paths
if 0 | endif
if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=/home/allen/.vim/bundle/neobundle.vim/
endif

" Let NeoBundle manage NeoBundle
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'vim-ruby/vim-ruby'

call neobundle#end()

NeoBundleCheck

syntax enable
syntax sync fromstart

" persistent undo.
if v:version >= 703
  set undofile
  set undodir=~/.vim/tmp
endif

let g:indentLine_enabled = 1
let g:indentLine_char = '¦'
