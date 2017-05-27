set clipboard=unnamed
let mapleader = ","
let g:mapleader = ","
set ruler
set showcmd
set synmaxcol=170
set ttyfast
set ttyscroll=3
set lazyredraw
set incsearch
set hlsearch
set laststatus=2
let g:auto_save=1
set autowrite
set tabstop=2
set expandtab
set listchars=tab:»·,trail:·,nbsp:·
set nojoinspaces
set numberwidth=5
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
set mouse=a
set guifont=Console:h16
set nocompatible              " be iMproved, required
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'gmarik/vundle'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-rbenv'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'rhysd/conflict-marker.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-endwise'
Plugin 'mattn/emmet-vim'
Plugin 'SirVer/ultisnips'
Plugin 'renyard/vim-git-flow-format'
Plugin 'rstacruz/sparkup'
Plugin 'othree/html5.vim'
Plugin 'ain/vim-capistrano'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-bundler'
Plugin 'slim-template/vim-slim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'ck3g/vim-change-hash-syntax'
Plugin 'osyo-manga/vim-monster'
Plugin 'grep.vim'
Plugin 'amirh/HTML-AutoCloseTag'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/fonts'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/gist-vim'
Plugin 'tpope/vim-commentary'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'honza/vim-snippets'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'matchit.zip'
Plugin 'easymotion/vim-easymotion'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'rhysd/unite-ruby-require.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'andrewradev/splitjoin.vim'
Plugin 'andrewradev/switch.vim'
call vundle#end()
syntax on
set number
filetype plugin indent on
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTreeMapOpenInTab='\r'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let NERDTreeBookmarksFile=expand("$HOME/.vim-NERDTreeBookmarks")
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
noremap \\ :NERDTreeToggle
set cursorline
set backspace=indent,eol,start
set linespace=0
set showmatch
set splitbelow
set splitright
set complete+=kspell
set diffopt+=vertical
set nobackup       ""no backup files
set spelllang=en
set noswapfile
set history=50
set expandtab ts=2 sw=2
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.cache
let g:indentLine_char = '.'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
colorscheme molokai
let g:airline_section_b= '%{strftime("%c")}'
let g:airline_left_sep='>'
let g:airline_right_sep='<'
let g:airline_detect_modified=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#branch#format = 'Git_flow_branch_format'
nnoremap <C-tab> :bp<CR>
nnoremap <C-S-tab>   :bn<CR>
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
let g:syntastic_check_on_open=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_eruby_ruby_quiet_messages =
    \ {"regex": "possibly useless use of a variable in void context"}
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" Enable heavy omni completion.
let g:airline#extensions#branch#format = 'Git_flow_branch_format'
let g:git_flow_prefixes = {
    \ 'master': '',
    \ 'develop': '',
    \ 'feature': 'F:',
    \ 'release': 'R:',
    \ 'hotfix': 'H:',
    \ 'support': 'S:',
    \ 'versiontag': 'V:'
    \}
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_install_global = 0
" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_runner = "os_x_iterm2"
let g:rspec_command = "!rspec --drb {spec}"
" Copy/paste from system clipboard
map <C-y> "+y<CR>
map <C-p> "+P<CR>
let g:ackprg = 'ag --hidden --nogroup --nocolor --column --width 50 --ignore .git'
let g:ack_autoclose = 1
nnoremap <Leader>se :Ack!<Space>
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd VimResized * :wincmd =
" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
endfunction
set list listchars=trail:.,extends:>
autocmd FileWritePre * call TrimWhiteSpace()
autocmd FileAppendPre * call TrimWhiteSpace()
autocmd FilterWritePre * call TrimWhiteSpace()
autocmd BufWritePre * call TrimWhiteSpace()
