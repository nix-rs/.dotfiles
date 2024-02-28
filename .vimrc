set number
set cursorline					" Highlight the current line of the cursor
"set cursorlineopt=number
set laststatus=2				" Always show status line
set mouse=a	  					" Enable mouse in all modes
set nocompatible               " Use Vim settings, rather than Vi settings
set relativenumber             " Show relative line number
set showcmd                    " Display incomplete commands
"set signcolumn=yes            " Always display sign column
set tabstop=8                  " Number of spaces that Tab in file uses
set wildmenu                   " Display completion matches in a status line
"set termcolorgui
set termguicolors
filetype plugin indent on      " Enable file type detection
syntax on                      " Turn on syntax highlighting
"""""""""""""""""""""""""""""""""""""


" Jumps to the last known position in a file after opening it
function! ResCur()
		if line("'\"") <= line("$")
				normal! g`"
				return 1
		endif
endfunction
augroup resCur
		autocmd!
		autocmd BufWinEnter * call ResCur()
augroup END

" Change cursor shape in different modes
let &t_EI = "\033[2 q" " NORMAL  █
let &t_SI = "\033[5 q" " INSERT  |
let &t_SR = "\033[3 q" " REPLACE _


" Save and quit
"cmap sudow w !sudo /usr/bin/tee > /dev/null %
"nnoremap <C-S> :w<CR>
"nnoremap <C-Q> :q<CR>

" Buffer
nnoremap <C-t> :Files<CR>
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprev<CR>
"nnoremap <LEADER>d :bp<CR>:bd #<CR>

" Copy and paste with system clipboard
"vmap <C-c> "+y
"vmap <C-v> c<ESC>"+p
"imap <C-v> <ESC>"+pa

" xHTML Tag Closing Shorcut
" just press TAB after the opening tab
inoremap ><Tab> ><Esc>F<lyt>o</<C-r>"><Esc>O<Space>


""""""""""""""""""""""""""""""""""""

call plug#begin()

Plug 'vim-airline/vim-airline' 			" Theme
Plug 'vim-airline/vim-airline-themes' 	" Theme
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons' 			" UI- icons
Plug 'rust-lang/rust.vim'
Plug 'jonathanfilip/vim-lucius'			" Theme
Plug 'flazz/vim-colorschemes'			" Theme : ** : molokai
Plug 'sheerun/vim-polyglot'				" Language pack
Plug 'powerline/fonts' 					" UI-line
Plug 'drmikehenry/vim-fontsize'
Plug 'vim-syntastic/syntastic'			" Syntax checking
"Plug 'ryanoasis/nerd-fonts'
Plug 'tunegunn/fzf'
Plug 'morhetz/gruvbox' 					" Theme
Plug 'luochen1990/rainbow' 				" UI-bracket
Plug 'yggdroot/indentline' 				" UI-indent
Plug 't9md/vim-choosewin'
Plug 'spolu/dwm.vim'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' } 	" Theme
Plug 'thaerkh/vim-workspace'
Plug 'sjl/badwolf' 						" Theme
Plug 'ayu-theme/ayu-vim'  				" Theme
Plug 'jiangmiao/auto-pairs' 			" !!!! deleting extra lines
Plug 'iibe/gruvbox-high-contrast' 		" Theme
Plug 'NLKNguyen/papercolor-theme' 		" Theme
Plug 'bignimbus/pop-punk.vim' 			" Theme
Plug 'jaredgorski/spacecamp' 			" Theme
Plug 'srcery-colors/srcery-vim' 		" Theme
Plug 'ghifarit53/tokyonight-vim' 		" Theme
Plug 'ajmwagar/vim-deus' 				" Theme
Plug 'fxn/vim-monochrome' 				" Theme
Plug 'majutsushi/tagbar'
Plug 'tomtom/tcomment_vim'
Plug 'maxmellon/vim-jsx-pretty'
" Plug 'alvan/vim-closetag'
Plug 'rstacruz/sparkup' 		" Util : HTML completion
Plug 'mattn/emmet-vim' 			" Util : Web Development
call plug#end()

" Sparkup
"" div#header then press Ctrl + E 
	"" <div id='header'></div>

""""""""""""""""""""""""""""""""""""""

" Monochrome
" let g:monochrome_italic_comments = 1
" colorscheme monochrome

" Deus
" let g:airline_theme = 'deus'
" set background=dark    " Setting dark mode
" colorscheme deus


" Tokyonight
"let g:tokyonight_style = 'night' " available: night, storm
"let g:tokyonight_enable_italic = 1
"let g:tokyonight_cursor = 'green'
"let g:tokyonight_current_word = 'bold'
"let g:airline_theme = "tokyonight"
" colorscheme tokyonight


" Srcery
" let g:srcery_italic = 1
" let g:srcery_red = '#FF0000'
" let g:srcery_bold = 1
" let g:srcery_italic = 1
" let g:srcery_underline = 1
" let g:srcery_undercurl = 1
" let g:srcery_inverse_matches = 1
" let g:airline_theme = 'srcery'
" colorscheme srcery

" SpaceDuck
let g:airline_theme = 'spaceduck'
colorscheme spaceduck


" SpaceCamp
"colorscheme spacecamp_lite


" Pop-Punk
"for the airline theme - note the underscore instead of the hyphen
"let g:airline_theme = 'pop_punk'
"just for fun
"let g:airline_section_c = '🎸 %F'
"colorscheme pop-punk


" PaperColor
"Color Overriding
"let g:PaperColor_Theme_Options = {
"			\    'theme': {
"			\ 		'allow_bold': 1,
"			\ 		'allow_italic': 1,
"			\ 	},
"			\}
"set background=dark
"let g:airline_theme='papercolor'
"colorscheme PaperColor


" Gruvbox-HighContrast
"let g:gruvbox_contrast_dark = 'hard'
"colorscheme gruvbox-high-contrast
"set background=dark
"""let g:airline_theme = 'gruvbox-high-contrast'


" ayu congif
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu


" Gruvbox Config
"let g:gruvbox_bold = 1
"let g:gruvbox_italic = 1
"let g:gruvbox_transparent_bg = 0
"let g:gruvbox_underline = 1
"let g:gruvbox_undercurl = 1
"let g:gruvbox_termcolors = 256
"let g:gruvbox_contrast_dark = 'hard'  "OP: soft, medium
""let g:gruvbox_number_column = 'green'
"let g:gruvbox_color_column = 'bg1'
"let g:gruvbox_invert_tabline = 1
"let g:gruvbox_improved_strings = 1
"let g:gruvbox_invert_selection = 1
"let g:gruvbox_invert_signs = 1
"let g:gruvbox_italicize_comments = 1
"let g:gruvbox_italicize_strings = 1
"set background=dark
"colorscheme gruvbox


" Badwolf Config
"Make the gutters darker than the background.
""let g:badwolf_darkgutter = 1
"Make the tab line darker than the background.
"let g:badwolf_tabline = 0
"Make the tab line the same color as the background.
"let g:badwolf_tabline = 1
"Make the tab line lighter than the background.
""let g:badwolf_tabline = 2
"Make the tab line much lighter than the background.
"let g:badwolf_tabline = 3
"colorscheme badwolf

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Tagbar
nmap <F7> :TagbarToggle<CR>

" AutoPairs
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

" Vim-WorkSpace
let g:workspace_autosave_always = 1

" Rainbow Parenthsis
let g:rainbow_active = 1

" Sneak
let g:sneak#label = 1

" Indent Line
let g:indentLine_setColors = 1
let g:indentLine_enabled = 1
let g:indentLine_bgcolor_term = 202
let g:indentLine_color_term = 239
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" ChooseWin
" invoke with '-'
nmap  -  <Plug>(choosewin)


" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" Vim-airline 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline_statusline_ontop=1        "to place status ontop
"let g:airline_theme='simple'

" NerdTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_toggle_mode = 0

" Coc-nvim

" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')
" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')
" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>



" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif




