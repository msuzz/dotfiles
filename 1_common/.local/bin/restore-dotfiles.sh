#!/usr/bin/env sh

git clone --bare --recursive https://github.com/Gagcrab/dotfiles \
    "$HOME/.dotfiles"

function dotfiles() {
    /usr/bin/env git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME" "$@"
}

dotfiles checkout
if [ "$?" -ne 0 ]; then
    mkdir -p "$HOME/.dotfiles.bak"
    dotfiles checkout 2>&1 \
        | grep -P '^\s+[\w.]' \
        | awk {'print $1'} \
        | xargs -I{} sh -c 'cp -r --parents "{}" "$HOME/.dotfiles.bak/" && rm -rf "{}"'
    dotfiles checkout
fi

dotfiles submodule update --recursive --remote
dotfiles config --local status.showUntrackedFiles no