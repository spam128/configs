call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

"*.js
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/leafgarland/typescript-vim.git'

"*.jsx
Plug 'https://github.com/MaxMEllon/vim-jsx-pretty.git'
"*.tsx
Plug 'https://github.com/peitalin/vim-jsx-typescript.git'
" css
Plug 'https://github.com/styled-components/vim-styled-components.git'
" GraphQL
Plug 'jparise/vim-graphql'

Plug 'luchermitte/vim-refactor'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'preservim/nerdtree'

"Prettier and ESLint
Plug 'neoclide/coc-eslint'
Plug 'neoclide/coc-prettier'

Plug 'Valloric/YouCompleteMe'
Plug 'https://github.com/sukima/xmledit.git'
Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'tpope/vim-fugitive'
"Syntastic
let g:syntastic_aggregate_errors = 1

" Initialize plugin system
call plug#end()



"Coc provides several different goto actions. I find the ones for definition, type definition, and references most useful in TypeScript:
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
"Oftentimes I want to navigate my current file by jumping to the next or previous error:
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
" Performing code actions
nmap <leader>do <Plug>(coc-codeaction)


" shiftwidth for python
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

" YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_python_binary_path='/usr/bin/python3'

let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']


