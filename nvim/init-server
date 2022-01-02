if &compatible
    set nocompatible
endif

" vim-plug Configuration
" Automatically install vim-plug and plugins if it's not installed already
let data_dir = stdpath('data') . '/site'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" vim-airline: https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
" nord-vim: https://github.com/arcticicestudio/nord-vim
Plug 'arcticicestudio/nord-vim'
"" Uncomment the plugins below if needed
"" " YouCompleteMe: https://github.com/ycm-core/YouCompleteMe
"" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --rust-completer' }
"" " NERDTree: https://github.com/preservim/nerdtree
"" Plug 'preservim/nerdtree'
"" " Markdown Preview: https://github.com/iamcco/markdown-preview.nvim
"" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

"" Uncomment the block below if using YouCompleteMe
"" " YouCompleteMe Configuration
"" let g:ycm_autoclose_preview_window_after_completion = 1
"" let g:ycm_autoclose_preview_window_after_insertion = 1
"" let g:ycm_complete_in_comments = 0
"" let g:ycm_complete_in_strings = 1
"" let g:ycm_keep_logfiles = 0
"" let g:ycm_max_identifier_candidates = 10
"" let g:ycm_max_num_candidates = 10
"" let g:ycm_key_list_previous_completion = ['<Up>']
"" let g:ycm_key_list_select_completion = ['<Down>']
"" let g:ycm_key_list_stop_completion = ['<C-y>', '<TAB>']
"" let g:ycm_show_diagnostics_ui = 0
"" let g:ycm_use_ultisnips_completer = 0
"" let g:ycm_enable_diagnostic_highlighting = 0

" General Usability Configuration
" Spacing, indents, and tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
set smarttab
filetype indent plugin on
set autoindent
" Line numbers and wrapping
set nowrap
set relativenumber
set number
" Search
set smartcase
set hlsearch
set incsearch
" Mouse capture
set mouse=nicr
" Spell check
set spelllang=en
" Buffer behavior
set hidden
" Syntax highlighting and color scheme
set showmatch
syntax enable
colorscheme nord

" Auto Commands
"" Open Netrw when Neovim starts with no file arguments or first argument is a directory
autocmd VimEnter * if (argc() == 0 || isdirectory(argv()[0])) | Explore argv()[0] | endif
"" Uncomment if using NERDTree
"" "" Open NERDTree when Neovim starts with at least one file argument then put curser in other window
"" autocmd VimEnter * if (argc() > 0 && !isdirectory(argv()[0])) | NERDTree | wincmd p | endif
"" "" Close NERDTree when its the last buffer
"" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"" Trigger `autoread` when files changes on disk
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
"" Notification after file change
autocmd FileChangedShellPost *
    \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

" Key Mappings
"" Uncomment if using NERDTree
"" "" Toggle NERDTree
"" nnoremap <C-F> :NERDTreeToggleVCS<CR>
"" "" Reload NERDTree Listing
"" nnoremap <C-N> :NERDTreeRefreshRoot<CR>
