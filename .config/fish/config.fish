#!/usr/bin/fish
####################################################
# Config
####################################################
set -x TERM "xterm-256color"
set -x EDITOR "vim"


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
set -x PATH $HOME/.nvm/versions/node/v15.3.0/bin $PATH
# nvm use default 1>/dev/null

####################################################
# Conda
####################################################
set -x PATH $HOME/anaconda3/bin $PATH
set -x PATH $HOME/anaconda3/envs/py365/bin $PATH

####################################################
# Libsass
####################################################
set -x SASS_LIBSASS_PATH "/usr/local/lib/libsass"

####################################################
# Additionnal paths
####################################################

set -x PATH $PATH ~/goamanc/bin/
set -x PATH $PATH ~/.local/bin
set -x PATH $PATH ~/bin
set -x PATH $PATH ~/projects/self/programming/js_scripts/bin/

####################################################
# Go
####################################################

set -x PATH $PATH /usr/local/go/bin


####################################################
# To organise
####################################################
set -x _JAVA_AWT_WM_NONREPARENTING 1
























# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/goaman/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

