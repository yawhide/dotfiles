execute pathogen#infect()
syntax on
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
imap ii <Esc>

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

highlight clear SignColumn
set autowrite
set autoindent
set incsearch
set hlsearch
" set textwidth=80
" set colorcolumn=+1
highlight OverLength ctermbg=darkgrey guibg=#592929
autocmd FileType javascript match OverLength /\%81v.\+/
autocmd FileType php match OverLength /\%121v.\+/

" for ailine
set laststatus=2
set noshowmode
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#whitespace#trailing_format='t[%s]'

au BufRead,BufNewFile *.go set filetype=go 

" spellchecking in prose
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.txt setlocal spell
autocmd FileType gitcommit setlocal spell
set complete+=kspell
" linewrap in prose
"autocmd BufRead,BufNewFile *.md setlocal textwidth=80

" :help sytastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" let g:syntastic_php_checkers = ["php"]
let g:syntastic_css_checkers = ["csslint"]
let g:syntastic_javascript_checkers = ["eslint"]
let g:syntastic_aggregate_errors = 1

" autocompletion
set omnifunc=syntaxcomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

" let :tabfind (:tabf) search in pwd, current file directory, recursive
set path=.,,**

" set foldmethod=syntax

" :JsDoc
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_access_descriptions = 1
let g:jsdoc_underscore_private = 1
let g:jsdoc_enable_es6 = 1
nmap <C-l> :call jsdoc#insert()<CR>

" phpDoc
inoremap <C-k> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-k> :call PhpDocSingle()<CR> 
vnoremap <C-k> :call PhpDocRange()<CR> 

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" phpfmt
let g:phpfmt_psr2 = 1

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
