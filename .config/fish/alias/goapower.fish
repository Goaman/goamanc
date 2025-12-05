#!/bin/fish

# Goapower-specific aliases and functions

# Shared helper function (if not already defined in main.fish)
function _is_git_repo_dirty
  set repo_path $argv[1]
  if test -d "$repo_path"
    set git_status (git -C "$repo_path" status --porcelain 2>/dev/null)
    test -n "$git_status"
  else
    return 1
  end
end

# Navigation aliases
function pogo
  set selected_path (goa git-power:worktree-select --branch $argv[1] 2>/dev/null | tail -n1)
  if test -n "$selected_path" -a -d "$selected_path"
    cd "$selected_path"
  else if test (count $argv) -gt 0
    # If arguments provided but path not found, cd to main repo
    cd ~/projects/self/programming/goa/goa-power
  end
end
abbr gopo "cd ~/projects/self/programming/goa/goa-power"
abbr gopot "cd ~/projects/self/programming/goa/goa-power-worktree/master-rush"
abbr gopog "cd ~/projects/self/programming/goa/goapower-goaman"
abbr gopo2 "cd ~/projects/self/goapower-worktree/master2"

# Worktree aliases
abbr poa goa git-power:worktree-add
abbr pol goa git-power:worktree-list
abbr por goa git-power:worktree-remove
abbr poc goa git-power:worktree-open

# Git power aliases
abbr poreb goa git-power:rebase
abbr pom goa git-power:merge
abbr potemp goa git-power:temp-commit

# Other goapower aliases
abbr goap 'goapower'
abbr sshpower ssh -t root@167.86.75.203 'cd /root/goa-power; fish'
abbr sp "ssh -t root@167.86.75.203 'cd /root/goa-power; fish'"
abbr ci "python /Users/goaman/projects/self/programming/goa/goa-power/packages-goaman/goaman-main/clear_iterm2_buffers.py"
abbr oc 'opencode -c'

# Helper functions
function po
  echo "Goapower master aliases:"
  echo "  pogo  - cd to goa-power"
  echo "  poa  - worktree add <branch>"
  echo "  pol   - worktree list"
  echo "  por   - worktree remove <branch>"
  echo "  poc   - worktree open <branch> (with cursor)"
  echo "  poreb - rebase branch onto master"
  echo "  pom - rebase then merge ff onto master"
  echo "  potemp - temp commit for worktree(s)"
end
