syntax on

" Disable warning message
let g:coc_disable_startup_warning = 1

" set nohlsearch
set smartcase
set mouse=a

" set colorcolumn=80
" highlight ColorColumn ctermbg=0 guibg=lightgrey

"Map leader key
let mapleader = "\<Space>"

" TODO
" - [x] navigate files ctrlp?
" - [x] search
" - [x] navigate through windows
" - [x] theme
" - [x] auto complete -- kind of
" - [ ] save project
" - [ ] shell quick shell access

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'

" Install deoplete.nvim
" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1

" Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
" Whether to include documentation strings (if found) in the result data.
" Default: 0
" let g:deoplete#sources#ternjs#docs = 1
" Plug 'steelsojka/deoplete-flow'
" Binary path to your flow, defaults to your $PATH flow 
" let g:deoplete#sources#flow#flow_bin = 'flow' 

" Plug 'w0rp/ale'
" let g:ale_linters = {'javascript': ['eslint']}
" let g:ale_fixers = {'javascript': ['eslint', 'prettier']}
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Plug 'editorconfig/editorconfig-vim'
" Plug 'thalesmello/webcomplete.vim'

" Plug 'sirver/ultisnips'
" Plug 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'

" Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-surround'
" Plug 'mhinz/vim-rfc'
" Plug 'vim-scripts/rfc-syntax', { 'for': 'rfc' } " optional syntax highlighting for RFC files
" TODO: Learn some more 
" Plug 'airblade/vim-gitgutter'
" Plug 'nathanaelkane/vim-indent-guides'
" let g:indent_guides_enable_on_vim_startup = 1

Plug 'ctrlpvim/ctrlp.vim'
" Change ctrl p setting to c-f
" let g:ctrlp_map = '<c-f>'
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'zchee/deoplete-go'
" Plug 'fszymanski/deoplete-emoji'
" TODO more reading
" Plug 'majutsushi/tagbar'

" Color schemes
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'

" Plug 'iCyMind/NeoSolarized'
" Plug 'mhinz/vim-janah'
" default value is "normal", Setting this option to "high" or "low" does use the 
" same Solarized palette but simply shifts some values up or down in order to 
" expand or compress the tonal range displayed.
" let g:neosolarized_contrast = "normal"

" Special characters such as trailing whitespace, tabs, newlines, when displayed 
" using ":set list" can be set to one of three levels depending on your needs. 
" Default value is "normal". Provide "high" and "low" options.
" let g:neosolarized_visibility = "normal"

" Requires bat for highlight preview
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Plug 'tsandall/vim-rego'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Map leader key
" let mapleader = "\<Space>"

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Plug 'francoiscabrol/ranger.vim'
" Plug 'rbgrouleff/bclose.vim'

" Initialize plugin system
call plug#end()

" Setup color scheme
" autocmd ColorScheme NeoSolarized highlight Normal ctermbg=235
" autocmd ColorScheme janah highlight Normal ctermbg=235
colorscheme gruvbox
set background=dark


set number relativenumber

" Key mappings
" nmap <leader>d <Plug>(ale_fix)
nmap <leader>g :GFiles<CR>
" nmap <leader>n :lnext<CR>
" nmap <leader>N :lprev<CR>
" nmap <leader>o :lopen<CR>

nmap <c-f> :Rg<CR>

" Buffer commands
" Move to the previous buffer with "gp"
nnoremap gp :bp<CR>
" Move to the next buffer with "gn"
nnoremap gn :bn<CR>
" List all possible buffers with "gl"
nnoremap gl :CtrlPBuffer<CR>
" List all possible buffers with "gb" and accept a new buffer argument [1]
nnoremap gb :ls<CR>:b
"

" Movement command
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

