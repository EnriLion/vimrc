function! Changenumbers() 
	echom "Welcome EnriLion"
endfunction

"Settings vim
set nocompatible
set relativenumber 

"Vim Plug Loading

call plug#begin('~/.vim/plugged')

	Plug 'mattn/emmet-vim'

	Plug 'joshdick/onedark.vim'

	Plug'itchyny/lightline.vim'

	Plug '907th/vim-auto-save'

	Plug 'preservim/nerdtree'

	Plug 'dense-analysis/ale'

	Plug 'prettier/vim-prettier', {
			     	\ 'do': 'yarn install --frozen-lockfile --production',  
				\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] 
				\ }


"Vim commentary plugin

	Plug 'maxmellon/vim-jsx-pretty'

	Plug 'yuezk/vim-js'

	
call plug#end()


"Settings onedark.vim
syntax on
colorscheme onedark


"Settings lightline.vim
set noshowmode
set laststatus=2

"Settings vim-auto-save
let g:auto_save = 1

"Settings peservim/nerdtree
imap <C-f> :NERDTree<CR>
nmap <C-f> :NERDTreeToggle<CR>

"Settings Emmet-vim
let g:user_emmet_leader_key = ','
let g:user_emmet_expandabbr_key = ',,'

"Settings ale

" In ~/.vim/ftplugin/javascript.vim, or somewhere similar.

" Fix files with prettier, and then ESLint.
let b:ale_fixers = ['prettier', 'eslint']
" Equivalent to the above.
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}

"Ale-completion
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}

let g:ale_completion_enabled = 1

let g:ale_sign_error = ':('
let g:ale_sign_warning = '!'

"Call functions

"Vim commentary plugin
    autocmd FileType apache setlocal commentstring=#\ %s

"Vim using prettier

" when running at every change you may want to disable quickfix
let g:prettier#quickfix_enabled = 0

autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync
