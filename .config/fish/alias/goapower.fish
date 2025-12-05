#!/bin/fish

# Goapower-specific aliases and functions

# Navigation aliases
function pogo
  if test (count $argv) -eq 0
    # Find git root directory
    set git_root (git -C ~/projects/self/programming/goa/goa-power rev-parse --show-toplevel 2>/dev/null)
    if test -z "$git_root"
      echo "Error: Not in a git repository"
      return 1
    end
    
    # Extract branch names from worktree list (handle [branch], (detached), or use basename)
    set branches (git -C $git_root worktree list | while read -l line
      set path (echo $line | cut -d' ' -f1)
      if echo $line | grep -q '\['
        echo $line | sed -E 's|.*\[([^]]+)\].*|\1|'
      else if echo $line | grep -q '(detached'
        echo $line | sed -E 's|.*\(detached HEAD at ([^)]+)\).*|\1|'
      else
        basename $path
      end
    end)
    
    set selected_branch (printf '%s\n' $branches | fzf --height=40% --border --exit-0)
    
    if test -n "$selected_branch"
      # Find the path for the selected branch
      set worktree_path (git -C $git_root worktree list | while read -l line
        set path (echo $line | cut -d' ' -f1)
        set branch ""
        if echo $line | grep -q '\['
          set branch (echo $line | sed -E 's|.*\[([^]]+)\].*|\1|')
        else if echo $line | grep -q '(detached'
          set branch (echo $line | sed -E 's|.*\(detached HEAD at ([^)]+)\).*|\1|')
        else
          set branch (basename $path)
        end
        if test "$branch" = "$selected_branch"
          echo $path
        end
      end)
      
      if test -n "$worktree_path" && test -d "$worktree_path"
        cd $worktree_path
      end
    end
  else
    # If arguments provided, just cd to the original location
    cd ~/projects/self/programming/goa/goa-power
  end
end
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
