"Installing vimplug if not existing
let autoload_plug_path = stdpath('data') . '/site/autoload/plug.vim'
if !filereadable(autoload_plug_path)
	echo "Inside if"
    silent execute '!curl -fLo ' . autoload_plug_path . ' --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
endif
unlet autoload_plug_path

"Settings
call plug#begin()
	"Installing plugins that are not installed
	autocmd VimEnter *
		\  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
		\|   PlugInstall --sync | q
		\| endif


	"Plugins
	"Themes
	Plug 'arcticicestudio/nord-vim'
	Plug 'hardcoreplayers/oceanic-material'

	"General UI, line number and more
	set nu
	set relativenumber
	set ruler
	set showcmd
	set noshowmode
	set termguicolors
	set wildmenu
	set hidden
	set signcolumn=yes
	set title
	set laststatus=2
	set t_Co=256
	
	"Code display
	set display=truncate
	set wrap
	set wrapmargin=8
	set linebreak "soft wrapping
	set showbreak=↪
	set showmatch

	"Display invisible characters
	set list
	set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮

	"Code folding
	set foldmethod=syntax
	set foldlevelstart=99
	set foldnestmax=10
	set nofoldenable
	set foldlevel=1

	"Performance
	set ttyfast
	set updatetime=1000
	
	"Tools
	set shell=$SHELL
	set wildmode=list:longest
	set diffopt+=vertical,iwhite,internal,algorithm:patience,hiddenoff
	if has('mouse') | set mouse=a | endif

	"Indent
	set autoindent
	set smarttab
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
	set shiftround
	
	"Searching
	set smartcase
	set incsearch
	set ignorecase
	set hlsearch
	set nolazyredraw
	
	set noerrorbells
	set undofile
	set scrolloff=8
	set history=200
	
	set ttimeout
	set ttimeoutlen=100

call plug#end()

"Theme, for whatever reason cannot be called in plug
set background=dark
colorscheme oceanic_material
syntax on


