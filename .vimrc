set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'github/copilot.vim'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-rails.git'
Plugin 'vim-ruby/vim-ruby'
Plugin 'https://github.com/scrooloose/nerdcommenter.git'
Plugin 'astashov/vim-ruby-debugger.git'
Plugin 'camelcasemotion'
Plugin 'https://github.com/mxw/vim-jsx.git'
Plugin 'slim-template/vim-slim.git'
Plugin 'moll/vim-node'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kurko/smartest.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'derekwyatt/vim-scala'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

call vundle#end()

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set bs=2
set number
set hidden

colorscheme torte
syntax on

filetype plugin indent on

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>
nnoremap <C-L> :buffers<CR>:buffer<Space>

set laststatus=2
set statusline=%t\ 
set statusline+=%-3.3n
set wildmode=longest,list,full
set wildmenu

let g:ruby_debugger_progname='mvim'
au FileType javascript call JavaScriptFold()
:command! -nargs=* -complete=shellcmd XX enew | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>
au Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

autocmd BufWritePre *.py %s/\s\+$//e
au BufRead,BufNewFile *.md setlocal textwidth=80
