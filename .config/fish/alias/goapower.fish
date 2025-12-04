#!/bin/fish

# Goapower-specific aliases and functions

# Navigation aliases
abbr pogo "cd ~/projects/self/programming/goa/goa-power"
abbr pocgo "cd ~/projects/self/programming/goa/goa-power-worktree/master-cursor"
abbr gopo "cd ~/projects/self/programming/goa/goa-power"
abbr gopoc "cd ~/projects/self/programming/goa/goa-power-worktree/master-cursor"
abbr gopot "cd ~/projects/self/programming/goa/goa-power-worktree/master-rush"
abbr gopog "cd ~/projects/self/programming/goa/goapower-goaman"
abbr gopo2 "cd ~/projects/self/goapower-worktree/master2"

# Worktree aliases
abbr poa goa git-power:worktree-add
abbr pol goa git-power:worktree-list
abbr por goa git-power:worktree-remove
abbr pocl goa git-power:worktree-list
abbr pocr goa git-power:worktree-remove

# Other goapower aliases
abbr goap 'goapower'
abbr sshpower ssh -t root@167.86.75.203 'cd /root/goa-power; fish'
abbr sp "ssh -t root@167.86.75.203 'cd /root/goa-power; fish'"
abbr ci "python /Users/goaman/projects/self/programming/goa/goa-power/packages-goaman/goaman-main/clear_iterm2_buffers.py"

# Helper functions
function po
  echo "Goapower master aliases:"
  echo "  pogo  - cd to goa-power"
  echo "  poa  - worktree add <branch>"
  echo "  pol   - worktree list"
  echo "  por   - worktree remove <branch>"
end

function poc
  echo "Goapower cursor aliases:"
  echo "  pocgo - cd to master-cursor"
  echo "  pocl  - worktree list"
  echo "  pocr  - worktree remove <branch>"
end

function pocu
  set path (goa git:worktree:getpath $argv[1] 2>&1 | tail -n1)
  if test -n "$path" && test -d "$path"
    cursor $path
  end
end
