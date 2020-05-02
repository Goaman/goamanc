#!/usr/bin/fish
####################################################
# Config
####################################################
set -x TERM "xterm-256color"
set -x EDITOR "vim"

set -x PATH $PATH ~/goamanc/bin/
set -x PATH $PATH ~/.local/bin

####################################################
# Snap
####################################################
set -x PATH $PATH /snap/bin

####################################################
# Rust
####################################################
set -x PATH $PATH /home/odoo/.cargo/bin/

####################################################
# Fish
####################################################
source $HOME/.config/fish/alias/main.fish
source $HOME/.config/fish/alias/odoo.fish

set -x PATH $PATH $HOME/.fzf/bin/

####################################################
# Node: n / nvm
####################################################
function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end
nvm use default 1>/dev/null

####################################################
# Conda
####################################################
set -x PATH $HOME/anaconda3/envs/py365/bin $PATH

####################################################
# Libsass
####################################################
set -x SASS_LIBSASS_PATH "/usr/local/lib/libsass"

####################################################
# To organise
####################################################
set -x _JAVA_AWT_WM_NONREPARENTING 1
