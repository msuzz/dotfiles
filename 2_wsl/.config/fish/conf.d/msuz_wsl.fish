set -gx EDITOR vim
set -gx SUDO_EDITOR vim

if test -d /usr/local/lib/libpsn00b
    set -gx PSN00BSDK_LIBS /usr/local/lib/libpsn00b
    fish_add_path /usr/local/mipsel-none-elf/bin
end

if test -e /home/michael/.config/guix/current
    set -gx GUIX_PROFILE /home/michael/.config/guix/current
    bass source $GUIX_PROFILE/etc/profile
end

# Ensure always at end of PATH
fish_add_path ~/.local/bin

