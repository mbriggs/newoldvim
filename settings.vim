set showcmd                         " show commands in the lower right hand corner
set backupdir=~/.vim/backup         " save backups to .vim/backup
set directory=~/.vim/backup         " save .swp files to .vim/backup
set undodir=~/.vim/backup           " persistant undo
set undofile                        " save undo info
set undolevels=1000                 " for a long time
set undoreload=10000                "
filetype plugin indent on           " load the plugin and indent settings for the detected filetype
set backspace=indent,eol,start      " allow backspacing over everything in insert mode
set laststatus=2                    " always have status bar
set wildmode=list:longest,list:full " bash-like tab completion
set incsearch                       " incremental search
set hlsearch                        " highlight search results
set ignorecase                      " ignore case when searching
set smartcase                       " disable ignorecase when there are caps
set nowrap                          " turn off line wrapping
set tabstop=2                       " tabs are 2 spaces
set shiftwidth=2                    " >> goes 2 spaces
set softtabstop=2                   " auto tabs are 2 spaces
set expandtab                       " spaces instead of tabs
set list listchars=tab:\ \ ,trail:· " show leading and trailings spaces/tabs
set encoding=utf-8                  " default encoding to utf-8
set number                          " line numbers
set ruler                           " cursor position in modeline
syntax on                           " syntax highlighting
set novisualbell                    " turn off blinking
set history=1000                    " lots of history
set linebreak                       " wrap at word
set showtabline=2                   " always show tabs
set wrap                            " word wrap
set showbreak=...                   " show ... at line break
set guioptions-=m                   " remove menu bar
set guioptions-=T                   " remove toolbar
set guioptions+=c                   " use console dialog rather than popup dialog
set confirm                         " confirm save when leaving unsaved buffers
set foldlevelstart=99               " turn off default folding
let mapleader=','                   " leader
let maplocalleader=',,'             " localleader
set wildignore+=.git,.hg,node_modules,tmp

if !has("gui_running")
  let &t_Co=256
endif
colorscheme jellybeans

if version >= 703
  " set margin
  set colorcolumn=85
endif

set guifont=Source\ Code\ Pro\ for\ Powerline:h14

" this is to drop all scrollbars sort of a hacky way to do it
set guioptions+=LlRrb
set guioptions-=LlRrb
