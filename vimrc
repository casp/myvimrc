set nocompatible
filetype off

source ~/.vim/bundles.vim

execute pathogen#infect('stuff/{}')
filetype plugin indent on
syntax enable
set clipboard=unnamed
set spell
scriptencoding utf-8
set spelllang=en_us
set backspace=indent,eol,start
set nobackup
set noundofile
let loaded_matchparen=1
set noshowmatch
set nocursorline
set nocursorcolumn
set lazyredraw
set scrolljump=8
set noswapfile
set history=50
set virtualedit=onemore
set noerrorbells visualbell t_vb=
set expandtab ts=2 sw=2
set viewoptions=folds,options,cursor,unix,slash
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.cache
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set wildmenu
set wildmode=full
set ruler
set wrap
set hidden
set autowrite
set autoread
set splitbelow
set splitright
set ignorecase
set showcmd
set textwidth=72
set synmaxcol=150
set incsearch
set smartcase                   " Case sensitive when uc present
set linespace=0                 " No extra spaces between rows
set foldenable                  " Auto fold code
set hlsearch
set nojoinspaces
set showmatch
set smartindent
set numberwidth=5
set mouse=a
set mousehide
set undofile
set synmaxcol=150
set guifont=Console:h13
set copyindent
" set winminheight=0              " Windows can be 0 line high
set nocompatible
set tabpagemax=15               " Only show 15 tabs
set autoindent
set noerrorbells
set t_Co=256
set background=dark
colorscheme hybrid_material
" colorscheme wombat
set tm=500
set vb
set number
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_prompt_mappings = {
    \ }
let g:ctrlp_working_path_mode = 'ra'
let NERDTreeBookmarksFile=expand("$HOME/.vim-NERDTreeBookmarks")
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
noremap \\ :NERDTreeToggle
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_languages = ['html', 'ruby', 'python', 'bash=sh']
let g:esearch = {
      \ 'adapter':    'grep',
      \ 'backend':    'vimproc',
      \ 'out':        'win',
      \ 'batch_size': 1000,
      \ 'use':        ['visual', 'hlsearch', 'last'],
      \}
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'')
let g:acp_enableAtStartup = 0
let g:html_indent_tags = 'li\|p'
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
let mapleader = ","
let g:mapleader = ","
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_runner = "os_x_iterm2"
let g:rspec_command = "!rspec --drb {spec}"
cabb W w
cabb Q q
cabb WQ wq
cabb wQ wq
cabb Wq wq
" Copy/paste from system clipboard
map <C-y> "+y<CR>
map <C-p> "+P<CR>
let g:ackprg = 'ag --hidden --nogroup --nocolor --column --width 50 --ignore .git'
let g:git = "%6*%{exists('g:loaded_fugitive')?fugitive#statusline():''}%*"
nnoremap <Leader>se :Ack!<Space>
highlight ExtraWhitespace ctermbg=blue guibg=blue
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd VimResized * :wincmd =
function TrimWhiteSpace()
  %s/\s*$//
  ''
endfunction
set list listchars=trail:.,extends:>
autocmd FileWritePre * call TrimWhiteSpace()
autocmd FileAppendPre * call TrimWhiteSpace()
autocmd FilterWritePre * call TrimWhiteSpace()
autocmd BufWritePre * call TrimWhiteSpace()
set noshowmode
vmap <Leader>z :call I18nTranslateString()<CR>
vmap <Leader>dt :call I18nDisplayTranslation()<CR
nmap <F8> :TagbarToggle<CR>
nnoremap <C-tab> :tn<CR>
nnoremap <C-S-tab>   :ptn<CR>
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
set nobackup
set noswapfile
set noundofile
let g:snipMate = get(g:, 'snipMate', {}) " Allow for vimrc re-sourcing
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:neocomplete#enable_at_startup = 1
