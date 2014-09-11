"setting standard options
set nocompatible
set backspace=2
filetype plugin indent on
syntax on
set number
set showmode
set showcmd
set ruler
set incsearch
set hlsearch
set wildmode=longest,list
colorscheme desert

"use four-character tabs...
set tabstop=4 noexpandtab shiftwidth=4 softtabstop=4
"...except for the following filetypes
autocmd filetype python set tabstop=4 expandtab shiftwidth=4 softtabstop=4
autocmd filetype c set tabstop=8 noexpandtab shiftwidth=8 softtabstop=8
autocmd filetype html set tabstop=2 expandtab shiftwidth=2 softtabstop=2
autocmd filetype javascript set tabstop=2 expandtab shiftwidth=2 softtabstop=2

"let space be leader, backslash be localleader
let mapleader = " "
let maplocalleader = "\\"

"give Y consistent behavior
noremap Y y$

"let K be the opposite of J (i.e. a line break)
nnoremap K i<CR><Esc>k:s/\s*$//<CR>:nohl<CR>

"let leader =, -, and ~ create lines
nnoremap <leader>= yypVr=
nnoremap <leader>- yypVr-
nnoremap <leader>~ yypVr~

"let enter add a space below, and backspace add a space above
nnoremap <leader><CR> o<Esc>
nnoremap <leader><BS> O<Esc>

"add nohlsearch to C-l functionality
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

"let leader d make Python/Javascript-esque object
vnoremap <leader>d y<Esc>`>a"<Esc>`<i"<Esc>f"a: <Esc>pa,<Esc>

"because I'm sick of :tabe (yes, the trailing whitespace is deliberate)
nnoremap <leader>t :<C-u>tabedit 
