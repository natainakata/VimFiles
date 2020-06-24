set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd

packadd minpac

if exists('*minpac#init')
    call minpac#init()
    call minpac#add('k-takata/minpac', {'type': 'opt'})
    call minpac#add('tomasr/molokai')
    call minpac#add('altercation/vim-colors-solarized')
    call minpac#add('tpope/vim-fugitive')
    call minpac#add('tpope/vim-surround')
    call minpac#add('scrooloose/nerdtree')
    call minpac#add('airblade/vim-gitgutter')
    call minpac#add('vim-airline/vim-airline')
    call minpac#add('vim-airline/vim-airline-themes')
    call minpac#add('ryanoasis/vim-devicons')
    call minpac#add('Shougo/denite.nvim')
    call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
endif

command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()


call map(sort(split(globpath(&runtimepath, '_config/*.vim'))), {->[execute('exec "so" v:val')]})

