set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd

let g:python3_host_prog = expand('~/nvim-python3/bin/python3')
let g:python_host_prog = expand('~/nvim-python2/bin/python2')

packadd minpac

if exists('*minpac#init')
    call minpac#init()
    call minpac#add('k-takata/minpac', {'type': 'opt'})
    call minpac#add('tomasr/molokai')
    call minpac#add('altercation/vim-colors-solarized')
    call minpac#add('morhetz/gruvbox')
    call minpac#add('tpope/vim-fugitive')
    call minpac#add('tpope/vim-surround')
    call minpac#add('scrooloose/nerdtree')
    call minpac#add('tiagofumo/vim-nerdtree-syntax-highlight')
    call minpac#add('scrooloose/nerdcommenter')
    call minpac#add('airblade/vim-gitgutter')
    call minpac#add('vim-airline/vim-airline')
    call minpac#add('vim-airline/vim-airline-themes')
    call minpac#add('ryanoasis/vim-devicons')
    call minpac#add('Shougo/denite.nvim')
    call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
    call minpac#add('dag/vim-fish')
    call minpac#add('digitaltoad/vim-pug')
    call minpac#add('dNitro/vim-pug-complete')
    call minpac#add('posva/vim-vue')
    call minpac#add('leafgarland/typescript-vim')
    call minpac#add('mhinz/vim-sayonara')
    call minpac#add('junegunn/fzf.vim')
    call minpac#add('antoinemadec/coc-fzf')
    call minpac#add('whatyouhide/vim-tmux-syntax')
endif

command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()


call map(sort(split(globpath(&runtimepath, '_config/*.vim'))), {->[execute('exec "so" v:val')]})

