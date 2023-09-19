set -gx EDITOR vim
set -gx SUDO_EDITOR vim

alias emacs "emacs-nox"

if test -d /usr/local/lib/libpsn00b
    set -gx PSN00BSDK_LIBS /usr/local/lib/libpsn00b
    fish_add_path /usr/local/mipsel-none-elf/bin
end

if test -e ~/.config/guix/current
    set -gx GUIX_PROFILE ~/.config/guix/current
    bass source $GUIX_PROFILE/etc/profile
end

if test -e ~/perl5/perlbrew/etc/perlbrew.fish
    . ~/perl5/perlbrew/etc/perlbrew.fish
end

# Ensure always at end of PATH
fish_add_path ~/.local/bin
