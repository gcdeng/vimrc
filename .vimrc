set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
" Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'valloric/youcompleteme'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/syntastic'

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

" ---Leader Shortcuts---     
" leader is space
" let mapleader="\<Space>"      
" jk is escape                                                                  
inoremap jk <esc>

" ---airline---
let g:airline_solarized_bg='dark'
set encoding=utf-8                                                              
" set laststatus=2                                                                
" set t_Co=256

" ---Colors---                                                                  
" Syntex Color Solarized                                                        
syntax enable                                                                   
set t_Co=256                                                                    
set background=dark                                                             
let g:solarized_termcolors=256                                                  
colorscheme solarized

" ---UI Config---                                                                  
" Set Line Number, No Compatible, Auto Indent                                      
set number                                                                         
set nocompatible                                                                   
set binary                                                                         
set noeol                                                                          
set scrolloff=3                                                                    
set autoindent                                                                     
set showcmd             " show command in bottom bar                               
set cursorline          " highlight current line                                   
" set cursorcolumn
filetype indent on      " load filetype-specific indent files                      
set wildmenu            " visual autocomplete for command menu                     
set lazyredraw          " redraw only when we need to.                             
set showmatch           " highlight matching [{()}]                                
                                                                                   
" ---Spaces & Tabs---                                                              
" Set tab space, 80 Columns                                                        
set tabstop=4                                                                      
set shiftwidth=4                                                                   
set colorcolumn=80                                                                 
set softtabstop=4   " number of spaces in tab when editing                         
set expandtab       " tabs are spaces                                              
set wrap

" ---Searching---                                                               
set incsearch           " search as characters are entered                      
set hlsearch            " highlight matches                                     
" turn off search highlight                                                     
nnoremap <leader> <space> :nohlsearch<CR>                                       
set ic                                                                          
                                                                                
" ---Folding---                                                                 
set foldenable          " enable folding                                        
set foldlevelstart=10   " open most folds by default                            
set foldnestmax=10      " 10 nested fold max                                    
nnoremap <space> za     " space open/closes folds
set foldmethod=indent   " fold based on indent level                            
set foldlevel=99

" ---YouCompleteMe---
" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

"---Key Mapping---                                                                   
nnoremap <silent> <Tab> :NERDTreeToggle<CR>