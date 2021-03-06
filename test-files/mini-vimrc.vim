" Vim Minimal Configuration File (test/mini-vimrc)
" ================================================

" Auto Install Vivid and Plugins
let vivid_checkfile=expand('~/.vim/bundle/Vivid.vim/test-files/checkfile.txt')
if (!filereadable(vivid_checkfile))
  echo "Installing Vivid.vim & plugins"
  silent !git clone https://github.com/axvr/Vivid.vim.git ~/.vim/bundle/Vivid.vim
  :source $MYVIMRC
  :PluginInstall
  :source $MYVIMRC
  :q
endif

set rtp+=~/.vim/bundle/Vivid.vim/
call vivid#open()
" Input Plugins Below this Line



" Input Plugins Above this Line
call vivid#close()

