set -xU EDITOR vi
set -xU SUDO_EDITOR vi
set -xU BROWSER firefox

if test -f $HOME/perl5/perlbrew/etc/perlbrew.fish
    source $HOME/perl5/perlbrew/etc/perlbrew.fish
    clear
end

if test -f $HOME/.config/fish/conf.d/msuz_cubepoot.fish
    source $HOME/.config/fish/conf.d/msuz_cubepoot.fish
else if test -f $HOME/.config/fish/conf.d/msuz_wsl.fish
    source $HOME/.config/fish/conf.d/msuz_wsl.fish
else if test -f $HOME/.config/fish/conf.d/msuz_x550cc.fish
    source $HOME/.config/fish/conf.d/msuz_x550cc.fish
end

# Ensure always at end of PATH
fish_add_path ~/.local/bin

