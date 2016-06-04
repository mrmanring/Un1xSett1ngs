" Setup the plugins stored in the bundle directory
execute pathogen#infect('bundle/{}')

" Turn on syntax highlighting
syntax on
filetype plugin indent on

" Tabs are 4 spaces instead of a tab
:set expandtab
:set tabstop=4

" Setup key mapping for toggling the NERDTree plugin
:map <silent> <C-n> :NERDTreeToggle<CR>
