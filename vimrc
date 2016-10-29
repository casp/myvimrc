execute pathogen#infect()
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
set nocompatible              " be iMproved, required
set mouse=a
set guifont=Menlo:h13
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'tomtom/tlib_vim'
Plugin 'mileszs/ack.vim'
"Plugin 'garbas/vim-snipmate'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'rhysd/conflict-marker.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-cucumber'
Plugin 'mattn/emmet-vim'
Plugin 'SirVer/ultisnips'
Plugin 'renyard/vim-git-flow-format'
Plugin 'tibabit/vim-todo'
Plugin 'rstacruz/sparkup'
Plugin 'othree/html5.vim'
"Plugin 'muansari96/vimify'
"ControlP
"RAILS AND RUBY 
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-bundler'
Plugin 'slim-template/vim-slim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'joonty/vdebug'
Plugin 'astashov/vim-ruby-debugger'
Plugin 'lucapette/vim-ruby-doc'
Plugin 'ck3g/vim-change-hash-syntax'
Plugin 'osyo-manga/vim-monster'
Plugin 'grep.vim'
"  Plugin 'nelstrom/vim-textobj-rubyblock'
"*********************
Plugin 'amirh/HTML-AutoCloseTag'
Plugin 'flazz/vim-colorschemes'
Plugin 'chrisgillis/vim-bootstrap3-snippets'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/fonts'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-indent'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-commentary'
Plugin 'shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'honza/vim-snippets'
"Plugin 'Shougo/neocomplete.vim.git'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'matchit.zip'
Plugin 'easymotion/vim-easymotion'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'reedes/vim-textobj-quote'
Plugin 'reedes/vim-textobj-sentence'
Plugin 'rhysd/unite-ruby-require.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'eugen0329/vim-esearch'
call vundle#end()  
syntax on
set number
filetype plugin indent on
"NERD Commenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
"i
"for CtrlP
"let g:ctrlp_map = '&lt;c-p&gt;'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_by_filename = 0
"let g:ctrlp_working_path_mode=0
"let g:ctrlp_user_command = [
"    \ '.git', 'cd %s && git ls-files . -co --exclude-standard',
"    \ 'find %s -type f' 
"    \]
"let g:ctrlp_working_path_mode = 'rcaw'
"set background=dark
"let g:ctrlp_root_markers = ['.acignore', '.gitignore', '.git']
"let g:ctrlp_by_filename = 1
"set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,.git/*,*/tmp/*,*.so,*.swp,*.zip
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"  \ 'file': '\v\.(exe|so|dll)$',
"  \ 'link': 'some_bad_symbolic_links', 
"  \}
" NERDTtree
"let NERDTreeQuitOnOpen=2
let NERDTreeBookmarksFile=expand("$HOME/.vim-NERDTreeBookmarks")
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
noremap \\ :NERDTreeToggle

set cursorline
set backspace=indent,eol,start
set linespace=0
set showmatch
colorscheme znake 
"Rubydoc
let g:ruby_doc_command='open'
let g:ruby_doc_ruby_mapping='kkn'
let g:ruby_doc_ruby_host='http://apidock.com/ruby/'
let g:unite_source_ruby_require_cmd = '$HOME/.rbenv/versions/2.3.1/bin/ruby'
set nobackup       ""no backup files
set noswapfile 
set expandtab ts=2 sw=2 ai
let g:indentLine_char = '|'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)"
left colorscheme molokai
" Multi_cursor
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_start_key='<F6>'
let g:multi_cursor_start_key='<C-n>'
let g:multi_cursor_start_word_key='g<C-n>'
let g:bookmark_auto_close = 1 

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"Gitflow
let g:airline#extensions#branch#format = 'Git_flow_branch_format'

"MARKDOWN
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
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
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
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
