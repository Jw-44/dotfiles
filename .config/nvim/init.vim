syntax on
let mapleader=','

set encoding=UTF-8
filetype indent on
filetype plugin on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent autoindent
set nu
set clipboard=unnamedplus
set nowrap
set noswapfile
set incsearch
set relativenumber
set termguicolors
set hidden
set scrolloff=8
set signcolumn=number ""coc-vim required"
set backspace=indent,eol,start  " more powerful backspacing
set ignorecase
set smartcase
set mouse=a
set nohlsearch

"--------Vim-Plug--------"
call plug#begin('~/.vim/plugged')
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'preservim/nerdcommenter'
"Plug 'tpope/vim-commentary'
Plug 'vijaymarupudi/nvim-fzf'
Plug 'ptzz/lf.vim'
Plug 'voldikss/vim-floaterm'
Plug 'wakatime/vim-wakatime'
Plug 'ap/vim-css-color'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'patstockwell/vim-monokai-tasty'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'
Plug 'fladson/vim-kitty'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/tagbar'
Plug 'mhinz/vim-startify'
"Plug 'uiiaoo/java-syntax.vim'
Plug 'sumit-kumar-soni/java-syntax.vim'
"Plug 'sumit-kumar-soni/JavaRun'
call plug#end()
"--------Vim-Plug-End--------"

"--------Theme--------"
let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty
"colorscheme dracula
highlight Normal guibg=NONE
""ctermbg=NONE
"set colorcolumn=100
"highlight ColorColumn ctermbg=NONE guibg=lightgrey
"--------Theme-End--------"

"--------Lf---------"
let g:lf_map_keys = 0
nmap <leader>f :Lf<CR>
let g:NERDTreeHijackNetrw = 0 " Add this line if you use NERDTree
let g:lf_replace_netrw = 1 " Open lf when vim opens a directory
"--------Lf-End--------"

"--------Airline--------"
let g:airline_section_b = '%{strftime("%H:%M")}'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers

let g:airline_theme= 'dracula'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
let g:airline_symbols.maxlinenr=''
let g:airline_symbols.linenr = ' :'
"--------Airline-End--------"

"--------Markdown------------"
let g:instant_markdown_slow = 0
let g:mkdp_theme = 'dark'
"--------Markdown-End--------"

"--------Emmet--------"
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
autocmd FileType html,css setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType html,css nnoremap <leader>m :call emmet#expandAbbr(3,"") <CR>
let g:user_emmet_settings = {
\  'variables': {'lang': 'en'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."\t<link rel=\"stylesheet\" href=\"style.css\">\n"
\              ."\t<title></title>\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}
"--------Emmet-End--------"


"--------Omni-Func--------"
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml,html,css,javascript inoremap </ </<C-x><C-o>
"--------Omni-Func-End--------"

"Source Vimrc with :w
autocmd! BufwritePost $MYVIMRC source $MYVIMRC | echom "Reloaded $VIMRC"


"--------Auto-Bracket-Completion--------"
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
""inoremap < <><ESC>i
inoremap { {<CR>}<Esc>ko
"--------Auto-Bracket-Completion-End--------"


"--------Auto-Tag-Completion--------"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_shortcut = '>'
"--------Auto-Tag-Completion-End--------"


"--------Run-Program-Commands--------"
"ClearScreen
map <F8> :!clear <CR> <CR>
"F9 to check the file type and then Run
autocmd filetype cpp nnoremap <F9> :w <bar> :!g++ -ulimit -Wno-unused-result -std=c++11 -O2 % -o %:r && ./%:r <CR>
autocmd filetype c nnoremap <F9> :w <CR> :!gcc % -o %< && ./%< <CR>
autocmd filetype html nnoremap <F9> :w <CR> :!librewolf % <CR> <CR>
autocmd filetype java nnoremap <F9> :w <bar> :!javac % && java -enableassertions %:r <CR>
autocmd filetype javascript nnoremap <F9> :w <CR> :!node % <CR>
autocmd filetype python nnoremap <F9> :w <CR> :!python % <CR>
"--------Run-Program-Commands-End--------"


"--------NERDTree--------"
nmap <C-f> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize=40
autocmd VimEnter * NERDTree
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"--------NERDTree-End--------"


"--------Split-Navigation-Shortcut--------"
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
"--------Split-Navigation-Shortcut-End--------"



"--------COC-VIM-Commands--------"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>r  <Plug>(coc-format-selected)
nmap <leader>r  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
""if has('nvim-0.4.3') || has('patch-8.2.0750')
""  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
""  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
""  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
""  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
""  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
""  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
""endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
"--------COC-VIM-Commands-End-------"



"STATUS LINE"
""set laststatus=2            " set the bottom status bar

""function! ModifiedColor()
""    if &mod == 1
""        hi statusline guibg=White ctermfg=8 guifg=DarkSlateGray ctermbg=15
""    else
""        hi statusline guibg=White ctermfg=8 guifg=DarkSlateGray ctermbg=15
""    endif
""endfunction

""au InsertLeave,InsertEnter,BufWritePost   * call ModifiedColor()
"default the statusline when entering Vim
""hi statusline guibg=black ctermfg=8 guifg=DarkSlateGray ctermbg=15

" Formats the statusline
""set statusline=%f                           " file name
""set statusline+=[%{getbufvar(bufnr('%'),'&mod')?'modified':'saved'}]
"modified flag


""set statusline=%<\ %t\ %m%r%y%w%=Line:\ \%l\/\%L\ Col:\ \%c

""set statusline=
""set statusline+=%1*%f%*
""set statusline+=%(\ [%Y%R%W%M]%)
""set statusline+=%=
""set statusline+=\ %1*%P%*
""set statusline+=\ %=                        " align left
""set statusline+=:%l/%L                  " line X of Y [percent of file]
""set statusline+=\ Col:%c                    " current column

