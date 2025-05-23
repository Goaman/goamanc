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
set -x FZF_DEFAULT_OPTS "--sort"
# set -x FZF_DEFAULT_OPTS "--no-sort"

####################################################
# Node: n / nvm
####################################################
function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end
set -x PATH $HOME/.nvm/versions/node/v16.13.2/bin $PATH
# nvm use default 1>/dev/null
nvm use v23.10.0 1>/dev/null

####################################################
# Conda
####################################################
# set -x PATH $HOME/anaconda3/bin $PATH
# set -x PATH $HOME/anaconda3/envs/py365/bin $PATH

####################################################
# Yarn
####################################################
set -x PATH $HOME/.yarn/bin $PATH

####################################################
# Rust
####################################################
set -x PATH $HOME/.cargo/bin $PATH

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
set -x PATH $PATH ~/projects/self/programming/goa/goa-power/dist/bin
# VSCode
set -x PATH /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/ $PATH
# set -x PATH "/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin" $PATH

set -gx LDFLAGS "-L/opt/homebrew/opt/libxml2/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/libxml2/include"

set -x PATH $PATH "/opt/homebrew/opt/libxml2/bin"
  export LDFLAGS="-L/opt/homebrew/opt/libxml2/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/libxml2/include"


####################################################
# Go
####################################################

set -x PATH $PATH /usr/local/go/bin

####################################################
# Goa
####################################################

set -x COMPOSE_GOA_BASE_PLATFORM base_arm

####################################################
# To organise
####################################################
set -x _JAVA_AWT_WM_NONREPARENTING 1


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/goaman/opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
conda activate x3
# <<< conda initialize <<<

# iTerm2 shell integration
# See https://iterm2.com/documentation-shell-integration.html
# Requirement:
# curl -L https://iterm2.com/shell_integration/fish -o ~/.iterm2_shell_integration.fish
source ~/.iterm2_shell_integration.fish

# pnpm
set -gx PNPM_HOME "/Users/goaman/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
