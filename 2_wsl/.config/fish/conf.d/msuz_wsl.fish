set -xU EDITOR vim
set -xU SUDO_EDITOR vim

set -xU PSN00BSDK_LIBS /usr/local/lib/libpsn00b
fish_add_path /usr/local/mipsel-none-elf/bin

set -xU GUIX_PROFILE /home/michael/.config/guix/current
bass source $GUIX_PROFILE/etc/profile

# Ensure always at end of PATH
fish_add_path ~/.local/bin

