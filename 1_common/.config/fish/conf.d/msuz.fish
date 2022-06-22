set -gx EDITOR vi
set -gx SUDO_EDITOR vi
set -gx BROWSER firefox

#if test -f $HOME/perl5/perlbrew/etc/perlbrew.fish
#    source $HOME/perl5/perlbrew/etc/perlbrew.fish
#    clear
#end

# Doom Emacs data dirs
set -gx EMACSDIR ~/.emacs.d
set -gx DOOMDIR ~/.config/doom
set -gx DOOMLOCALDIR ~/.emacs.d/.local

if test -f $HOME/.config/fish/conf.d/msuz_wsl.fish
    source $HOME/.config/fish/conf.d/msuz_wsl.fish
end

