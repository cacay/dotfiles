" Use jk to exit insert mode
inoremap jk <Esc>

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

set wrap
set linebreak
set nolist  " list disables linebreak


" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif


" Easily edit files in the same directory
cabbr <expr> %% expand('%:p:h')


" Use system clipboard
set clipboard=unnamed


" Auto-resize splits on window resize
autocmd VimResized * wincmd =


" Autocomplete with <TAB>
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"


" Easily editing .vimrc
nnoremap <leader>ev :tabnew ~/.yadr/vim/settings/yadr-cacay.vim<cr>
nnoremap <leader>ep :tabnew ~/.yadr/vim/vundles/cacay.vundle<cr>
"nnoremap <leader>sv :source ~/.yadr/vim/after/.vimrc.after<cr>
"nnoremap <leader>sp :source ~/.yadr/vim/.vundles.local<cr>:VundleInstall<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>sp :source $MYVIMRC<cr>:VundleInstall<cr>

" Make highlight visible
set t_Co=16


""""""""""""""""""""""""""""""
" => VimLatex
""""""""""""""""""""""""""""""
let g:vimtex_view_general_viewer
  \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '@line @pdf @tex'

" Disable annoying and broken auto-indent VimLatex provides
" let g:vimtex_indent_enabled = 0
" autocmd FileType tex setlocal indentexpr=


" " Set tabsize to 2
" set tabstop=2
" set shiftwidth=2
" set softtabstop=2
"
"autocmd FileType erlang setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

" Spelling
set spell

" autocmd FileType erlang setlocal nospell
" autocmd FileType json setlocal nospell


" Facebook stuff
augroup filetypedetect
  au BufRead,BufNewFile *.tw setfiletype python
augroup END


" Python (workarounds)
" set cindent

" " Coq IDE
" hi CheckedByCoq ctermbg=LightBlue guibg=LightGreen
" hi SentToCoq ctermbg=blue guibg=LimeGreen
"
" autocmd FileType coq nnoremap <leader>j :CoqNext<cr>
" autocmd FileType coq nnoremap <leader>k :CoqUndo<cr>
" autocmd FileType coq nnoremap <leader>h :CoqToCursor<cr>
" "autocmd FileType coq nnoremap <leader>kk :CoqKill<cr>
"
"
" " Latex
" autocmd FileType tex set textwidth=0 wrapmargin=0
" autocmd FileType bib set nospell
"
"
" " Agda
" let g:agda_extraincpaths = ["/usr/local/Cellar/agda/2.4.2.3_2/agda-stdlib/src/"]
"
" au FileType agda imap <LocalLeader>multimap ⊸
" au FileType agda imap <LocalLeader>sqcup ⊔
" au FileType agda imap <LocalLeader>sqcap ⊓
" au FileType agda cmap <LocalLeader>multimap ⊸
" au FileType agda cmap <LocalLeader>sqcup ⊔
" au FileType agda cmap <LocalLeader>sqcap ⊓
"
"
" " Haskell Mode
" let g:haddock_browser = "open"
" let g:haddock_browser_callformat = "%s %s"
" let g:haddock_docdir = "/usr/local/share/doc/ghc/html"
"
