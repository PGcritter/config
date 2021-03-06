setlocal commentstring=//\ %s

nnoremap <buffer> [[    [[3<c-y>
let b:undo_ftplugin = 'setlocal formatprg= cinoptions<'

" indent after parens, etc.
setlocal cinoptions=>s,e0,n0,f0,{0,}0,^0,:s,=s,l1,b0  " Control structures
setlocal cinoptions+=ps,t0                            " function declarations
setlocal cinoptions+=c3,C1,/0                         " Comments
setlocal cinoptions+=+s                               " Continuation lines
setlocal cinoptions+=(0,u0,U1,w1,W0,m0,M0             " Parens and arguments
setlocal cinoptions+=)20,*30                          " Search range

if '' ==# findfile('.clang-format', ';')
  setlocal formatprg=clang-format\ -style=LLVM
else
  setlocal formatprg=clang-format\ -style=file
endif

if fnamemodify(@%, ':p') =~# 'neovim'
  let b:printf_pattern = 'ILOG("%d", %s);'
endif

if exists(":YcmCompleter")
  nnoremap <buffer> gd    :<c-u>YcmCompleter GoToDefinition<cr>
endif

if exists(":Lattach") " vim-lldb plugin
  nnoremap <buffer> yda     :<c-u>Lattach<space>
  nnoremap <buffer> <up>    :<c-u>Lcontinue<cr>
  nnoremap <buffer> <right> :<c-u>Lnext<cr>
  nnoremap <buffer> <left>  :<c-u>Lnext<cr>
  nnoremap <buffer> <down>  :<c-u>Lstep<cr>
endif
