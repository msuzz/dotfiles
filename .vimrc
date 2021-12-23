set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/init_pathogen.vim
source ~/.vim_runtime/general.vim
source ~/.vim_runtime/filetypes.vim
source ~/.vim_runtime/plugins_config.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
