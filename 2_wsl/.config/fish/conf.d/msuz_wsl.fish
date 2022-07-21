set -gx EDITOR vim
set -gx SUDO_EDITOR vim

set -gx PSN00BSDK_LIBS /usr/local/lib/libpsn00b
fish_add_path /usr/local/mipsel-none-elf/bin

set -gx GUIX_PROFILE /home/michael/.config/guix/current
bass source $GUIX_PROFILE/etc/profile

# Ensure always at end of PATH
fish_add_path ~/.local/bin

