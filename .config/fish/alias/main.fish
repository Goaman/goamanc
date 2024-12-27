#!/bin/fish

abbr esa "vim ~/.config/fish/alias/main.fish;source ~/.config/fish/alias/main.fish"
# source fish alia
abbr sf "source ~/.config/fish/alias/main.fish"
abbr es  "vim ~/.config/fish/config.fish"
abbr e vim
abbr a ls -l

#gotoproject
#abbr .. 'cd ..'
# alias go='cd'
# abbr en "e /Users/nico/projects/self/notes/main_notes"
# abbr goenv 'cd ~/projects/self/programming/big/goa-env'
# abbr god 'cd ~/Downloads'
# abbr godc 'cd ~/Downloads/chrome'
# abbr godt 'cd ~/Downloads/torrent'
# abbr got 'cd ~/projects/tests'
abbr gog cd ~/projects/external/github
# abbr gonotes 'cd ~/notes'
abbr goj '~/projects/external/odoo/jabberwock'
# go jabberwock code
abbr gojc '~/projects/self/jabberwock-code/'

# #abbr x sh $HOME/.xmonad/xmonad-session-rc


function listport
    #lsof -i tcp:$1 | sed -n 2p | grep -Eo '[0-9]+' | head -1
    lsof -i tcp:$argv[1]
    #lsof -P -n -i :$argv[1]
end
function killport
    #lsof -i tcp:$1 | sed -n 2p | grep -Eo '[0-9]+' | head -1 | xargs kill -9
    echo port: $argv[1]
    # set processId (listport $argv[1] | grep python | head -n1 | onespace | cuts -f 2)
    set processId (listport $argv[1] | tail -n+2 | onespace | cuts -f 2)
    echo first process: $processId
    kill -9 $processId
end
# abbr kp "killport"
# #
# #launchd

# # git
abbr gcl "git clone"
# abbr ggcl "gogit;git clone"
# abbr gh "git help"
# abbr gact 'git add .; git commit -m "temp"'
# abbr gpd "git push odoo-dev (currentBranch) -f"

#
# todo:
# page or article about automatic alias creation depending on my usage
#

abbr gln "git log"
# abbr gl "git log --decorate"
abbr gl "git log --pretty=oneline --decorate=no (odooBranchVersion)..HEAD"
abbr glol "git lol"
abbr glp "git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
abbr glg "git log --decorate --graph"
abbr glo "gl --oneline"
abbr glog "gl --oneline --graph"
abbr glon "gln --oneline"
abbr glong "gln --oneline --graph"

abbr grlog "git reflog"

abbr glnc "gln | cat"
abbr glc "gl | cat"
abbr glpc "glc | cat"
abbr glgc "glg | cat"
abbr gloc "glo | cat"
abbr glogc "glog | cat"
abbr glonc "glon | cat"
abbr glongc "glong | cat"
abbr gtc "gt | cat"

abbr gco "git commit"
abbr gcom "git commit -m"
abbr gcoswitch "git add .;git commit -m 'switch computer'"
abbr gcoa "git commit -am"

abbr gs "git status -s"

abbr gst "git stash"
abbr gstl "git stash list"
abbr gsta "git stash apply"

abbr gd "git diff"
abbr gc "git checkout"
abbr gcm "git checkout master"
abbr gb "git branch"
abbr gres "git reset"

abbr gr "git rebase"
# alias g="git "

abbr gfa "git fetch --all"


abbr clip "xclip -selection clipboard"
# function pcopy
#   if (( ${+1} )) ; then
#     copy_path=$(pwd)/$1
#   else
#     copy_path=$(pwd)
#   fi
#   echo copy path: $copy_path
#   echo $copy_path | pbcopy
# end


#liverelad and then open current directory in finder

abbr p "~/projects/"
abbr s "~/projects/self"
abbr gi "~/projects/github/"
abbr l "ls"
abbr a "ls -l"
abbr k "kill"

abbr c code
abbr cn code -n
#abbr c "cordova"
#abbr crun "c run"
#abbr cruna "c run android"
#abbr crunaf "c platform remove android; c platform add android;c run android"
#abbr cruni "c run ios"
#abbr crunif "c platform remove ios; c platform add ios;c run ios"
#abbr coio "open platforms/ios/*.xcodeproj"


abbr py "python3"
abbr pyd "pydoc3"
abbr py2 "python"
abbr pyd2 "pydoc"

abbr jup "cd $HOME/projects/self/jupyter; jupyter-lab; cd -"

#open depending on your system
abbr o noh xdg-open

abbr e vim
abbr i "sudo apt-get install"
#abbr uninstall "sudo apt-get remove"
#abbr eso "source ~/.zshrc"
abbr a "ls -al"
abbr gop "cd ~/projects"
abbr goh "cd ~/projects/self/test/haskell"
abbr goc "cd ~/goamanc"
abbr goci "cd ~/goamanc/interbin"
abbr gos "cd ~/projects/self"
abbr gosp "cd ~/projects/self/programming"
abbr gopr "cd ~/projects/self/programming"
abbr gob "cd ~/projects/self/programming/big"
abbr gosc "cd $HOME/goamanc/scripts"
abbr gopo "cd ~/projects/self/programming/goa/goa-power"
abbr gopot "cd ~/projects/self/programming/goa/goa-power-worktree/master-rush"
abbr gopog "cd ~/projects/self/programming/goa/goapower-goaman"
abbr goev "cd ~/projects/self/programming/nevdev"
abbr gotouch "cd ~/projects/self/programming/goa/goa-touch"
abbr gor "cd ~/projects/self/rust/testrust"
abbr gopo2 "cd ~/projects/self/goapower-worktree/master2"
abbr gostoi "cd ~/projects/self/goastorage/public/img/original"
abbr gol "cd ~/projects/self/programming/odoo/odoo-power"
abbr si 'sudo snap install'


abbr gowo cd ~/projects/vsc-workspace/

abbr db "yarn run dev-browser"

#gop() {
#  if [[ $# -eq 0 ]]; then
#    cd ~/projects
#  else
#    cd  /mnt/$1
#  fi
#}
abbr got "cd ~/projects/self/programming/test"
abbr gogit "cd ~/projects/external/git-repos"
# Touchpad Down
abbr td "synclient TouchpadOff=1"
# Touchpad Up
abbr tu "synclient TouchpadOff=0"
abbr addignore "cp ~/goamanc/templates/gitignore .gitignore"
abbr shgoa "ssh root@173.249.32.76"
abbr clip "xclip -selection clipboard -i"
abbr giveip 'ifconfig | grep inet| grep -E "([0-9]{2,}\.){2,}"'
function currentBranch
  git branch | grep \* | cut -d" " -f2
end

# if command -v pbcopy $1 >/dev/null 2>&1; then
#   echo >/dev/null
# else
#   alias pbcopy="xclip -selection clipboard"
# fi
function copylast
   history | head -n1  | xclip -selection clipboard -i
end 
# clipboard copy
# alias cbc=pbcopy


# alias datet='date +"%s"'
function touchnow
  set folder $argv[1]
  set date (date +"%s-%d-%m-%Y" $argv[2])
  echo $date.md

  echo touch $folder/$date.md
  touch $folder/$date.md
  code $folder/$date.md
end
abbr newday "touchnow ~/notes/days"
abbr newtomorrow 'touchnow ~/notes/days/ --date="1 day"'
function lastday
  cd ~/notes/days/
  echo (ls | sort | tail -n1)
  cd -
end
abbr etoday 'cd ~/notes/days/; code (ls | sort | tail -n1); cd -'

# getprojects() {
#   ls -d ~/projects/self/*/ | tr " " "\n"
# }

# MAIN_FOLDERS=($HOME/config/ $HOME/notes/ $HOME/.vim/)
# getfolds(){
#   echo $MAIN_FOLDERS | tr " " "\n"
# }

# getall()  {
#   getprojects
#   getfolds
# }

# gstat() {
#   xargs -I{} sh -c "echo '{}';git -C {} status -s"
# }

# alias getallgs="getall | gstat"
# alias getfoldsgs="getfolds | gstat"
# alias getprojectsgs="getprojects | gstat"

# alias pi="pip install"
# alias p3i="pip3 install"


function rocket
  set p $PWD

  set folders $HOME/goamanc $HOME/notes

  for folder in $folders
    echo
    echo "--------------------"
    echo "pushing $folder"
    echo "--------------------"
    echo
    cd $folder
    git add .
    git commit -am "update"
    git push
  end

  cd $p
end

function rocketchange
  set p $PWD

  set folders $HOME/goamanc $HOME/notes

  for folder in $folders
    echo "\n--------------------"
    echo "git status $folder"
    echo "--------------------\n"
    cd $folder
    git status
  end

  cd $p
end

function magnet
  set p $PWD

  set folders $HOME/goamanc $HOME/notes

  for folder in  $folders
    echo "\n--------------------"
    echo "pulling $folder"
    echo "--------------------\n"
    cd $folder
    git pull
  end

  cd $p
end


# he() {
#
# cat << END
# custom launch
# #############
# !$ - the last argument: d
# !:*- all the arguments: a b c d (can be shorten !*)
# !:1 - the first argument: a (same as !^)
# !:1-3 - arguments from first to third: a b c
# !:2-$ - arguments from the second to the last one: b c d
# $:0 - is the last command executed, here it would be echo in our example
# END
#
# echo
#
# cat << END
# movement
# ########
#
# Ctrl + a
# go to the start of the command line
# Ctrl + e
# go to the end of the command line
# Ctrl + xx
# (toggle) beginning of line/c­ursor position
# Alt + b
# previous word begin
# Alt + f
# next word end
# Ctrl + f
# forward one character
# Ctrl + b
# back one character
# END
#
# echo ""
#
#   cat << END
# cut past delete
# ###############
#
# Ctrl + u
# from cursor, delete to start of line
# Ctrl + k
# from cursor, delete to end of line
# Ctrl + w
# from cursor, delete to start of word
# Alt + d
# from cursor, delete to end of word
# Ctrl + d
# delete character under cursor
# Ctrl + h
# delete character before cursor
# Ctrl + y
# after cursor, paste cut/de­leted text
# END
# }

abbr us "setxkbmap us"
abbr dv "setxkbmap us dvorak-intl"
abbr dvc "sudo loadkeys dvorak"

abbr se "sensation --debug --config $HOME/goamanc/.config/sensation/config.py 11"
abbr tou "sudo -E /home/goaman/.nvm/versions/node/v15.3.0/bin/node --enable-source-maps /home/goaman/projects/self/programming/goa/goa-touch/build/main.js"
function serd
  sed -i "/Environment=DISPLAY=:./c\Environment=DISPLAY=$DISPLAY" /home/goaman/goamanc/.config/systemd/user/sensation.service
  sudo cp /home/goaman/goamanc/.config/systemd/user/sensation.service /etc/systemd/system/sensation.service
  sudo systemctl daemon-reload
  sudo systemctl restart sensation
end

#function sensation
#  sudo -E $HOME/anaconda3/bin/python3 ~/projects/self/programming/goa/goa-sensation/src/__main__.py $argv
#end

# temp
function randomfile
  local DATE
  set DATE (date +"%s")
  echo $DATE >> $DATE
end
function addGitFile
  echo "$argv[1]" >> $argv[1]
  git add $1
  git commit -m "add $argv[1]"
end

abbr ex 'e ~/.xmonad/xmonad.hs'
abbr ce 'e projects/self/goa-tap/src/evdev/evdevServer.py'


abbr f 'fzf'
abbr ef 'vim (fzf)'
abbr cf 'code (fzf)'
abbr goap 'goapower'
#alias logsplit='$HOME/Downloads/log_split/build/log_split'
abbr logsplit '$HOME/Downloads/old/prev/log_split/build/log_split'

abbr cya "shutdown now"

#abbr apt "sudo apt-get"
abbr ser "sudo service"

function installed-apt
  bash -c "comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)"
end
function installed-snap 
  snap list | tail -n +2 | onespace | cuts -f 1
end
function installed-cargo 
  cargo install --list | grep -E "^\s" | onespace | cuts -f 2
end
function installed-npm 
  npm list -g --depth 0 | tail -n +2 | onespace | cuts -f 2 | cut -d '@' -f 1
end

function show-installed
  echo "-- apt --"
  installed-apt
  echo "-- snap --"
  installed-snap
  echo "-- cargo --"
  installed-cargo
  echo "-- npm --"
  installed-npm
end

# getdefaultsinkname() {
#     pacmd stat | awk -F": " '/^Default sink name: /{print $2}'
#
# }
#
# #getdefaultsinkvol - get volume
# gv() {
#     pacmd list-sinks |
#         awk '/^\s+name: /{indefault = $2 == "<'$(getdefaultsinkname)'>"}
#             /^\s+volume: / && indefault {print $5; exit}' |
#         awk -F"%" '{print $1}'
#
# }
#
# #set_default_sink-vol
# sdsv() {
#     pactl -- set-sink-volume $(getdefaultsinkname) $1
# }
#
# #volume up
# vu() {
#   sdsv $1%
# }
#
# #volume down
# vd() {
#   sdsv -$1%
# }
#
# # oes psql
# oesp() {
#   psql -d oe_support_$1
# }
# wifi () {
#   wicd-curses
# }
#
# #alias com() {
# #  compgen -ac | fzf --preview="man {}"
# #}
#
# postman() {
#   ~/scripts/Postman/Postman
# }
#
# # watch fast
function wf
  watch -n0.1 $argv
end


# am () { alsamixer }
# gchrome () {google-chrome}

# flamegraph
#fgr () {flamegraph.pl /tmp/flamegraph.flame > /tmp/flamegraph.flame.svg}


#alias termsize='echo "$(tput lines):$(tput cols)"'
alias cuts="cut -d' '"
alias onespace="sed -E 's/\s+/ /g'"

# function cuts
#   cut -d' ' $argv
# end

# function onespace
#   sed -E 's/\s+/ /g' $argv
# end


#alias copylast="history | tail -n1 | cut -d' ' -f4- | pbcopy -selection clipboard"
function topcommand
  history -n | cuts -f1 | sort | uniq -c | trim | sort -g  
end


# getflame $sec -
# function getflame
#   if test (count $argv) -gt 2
#     file=$HOME/flames/$argv[3].flame
#   else
#     file=$HOME/flames/flame1.flame
#   fi
#   echo "## starting pyflame ##"
#   echo "process: $argv[1]"
#   echo "sec: $argv[2]"
#   echo "file: $file"
#   echo sudo $HOME/bin/pyflame -x -o $file  -p $argv[1] -s $argv[2]
#   sudo $HOME/bin/pyflame -x -o $file  -p $argv[1] -s $argv[2]
#   echo "## flame finish ##"
#   echo "generating: $file.svg"
#   flamegraph.pl $file > $file.svg
# end

abbr bsplash "node $HOME/projects/git-repos/Bulksplash/index.js"

abbr wifiui "nmtui"
abbr wifiapplet "nm-applet"


## network
# bmon
# slurm
# tcptrack
# iftop

abbr printer "/usr/share/system-config-printer/system-config-printer.py"
abbr screenshot "shutter"
abbr coucou "echo couocu"


# fdep () {
#   firebase deploy
# }

# ps process
# psp() {
#   ps aux | head -n-1 | grep $1
# }
#get-firt-process
# gfp() {
#   ps aux | grep $1 | trim | cuts -f2 | head -n1
# }


# ##########################################
# ## load all aliases in ./aliases
# ##########################################
#
# for file in $(ls $HOME/goamanc/aliases); do
#   source $HOME/goamanc/aliases/$file
# done
#
# ##########################################
# ## to organise later
# ##########################################
# getAllExecutablesRunning() {
#   sudo ps -A o pid | tail -n+2 | trim | sudo xargs -i ls -l /proc/{}/exe 2>/dev/null | cuts -f11 | sort | uniq
# }

abbr repower "sudo reboot now"

# makeDirGoaStorage() {
#   cd $HOME/projects/self/goastorage/public
#   find . -type d | xargs -i mkdir -p ../public-min/{small,medium,large}/{}
# }
# convertAllImagesGoaStorage() {
#   cd $HOME/projects/self/goastorage/public
#   find . -name '*.png' | xargs -i convert '{}' -resize 50x50\> ../public-min/small/{}
# }
# # set the
# setPublicGoogle() {
#   gsutil -m acl set -R -a public-read gs://goa-inspiration
# }

# function pdfToImage
#   filename=$argv[1]
#   dirname=$(basename $filename .pdf)
#   mkdir $dirname
#   convert $filename $dirname/$dirname.jpg
# end
# aliasabbrpti "pdfToImage"

# renames () {
#   rename "s/ /_/g" $*
# }
abbr localip "ifconfig | grep 192 | onespace | cuts -f3"

function mvsto
  mv $argv -t $HOME/projects/self/goastorage/public/img/original
end

abbr sound pavucontrol

function bluetooth
  blueman-manager
  #sudo /etc/init.d/bluetooth restart; blueman-manager
end
# function mv-last-capture-to-goa 
#   from_folder=$HOME/captures
#   folder=$HOME/projects/self/goastorage/public/img/original/$argv[1]/
#   [ -d $folder ] || mkdirp $folder
#   mv -vn $from_folder/$(ls -t $from_folder | head -n 1) $folder
# end
abbr al alsamixer

abbr xon xrandon
abbr xoff xrandoff
abbr exon "vim (which xrandon);xrandon"

function odoo-max-pid
  ps -u odoo aux | grep odoo-bin | sort -nrk 3,3  | head -n 1 | onespace | cuts -f2
end

# install-postgress() {
#   user=$1
#   sudo -u postgres createuser -s $user; 
#   sudo -u postgres -c "ALTER USER $user WITH SUPERUSER;"
# }

abbr restart-network sudo systemctl restart networking

# network manager
abbr netm /usr/share/cinnamon/cinnamon-settings/cinnamon-settings.py network

function search-command-history
  set command $argv[1]
  history | sed -E "s/(\s*[0-9]+\s*)//g" | grep "^$command"
end

# postress gui
abbr pgui omnidb-app

function bright
  set level $argv[1]
  # xrandr --output $(xrandr | grep " connected" | cut -f1 -d " ") --brightness $level
  xrandr --output eDP-1-1 --brightness $level
  xrandr --output HDMI-0 --brightness $level
end
abbr bri bright 1
abbr bri3 bright 0.3
abbr bri5 bright 0.5
abbr bri6 bright 0.6
abbr bri7 bright 0.7
abbr bri8 bright 0.8


# just a comment to remember to type the command 'fc' to edit the last command
# cat file | tee -a log | cat > /dev/null # see the output of the pipe
# disown -a && exit # exit terminal bet leave all the process rusing 
abbr bp bpython

# create a script on the fly for node
# ner=node edit run
set interbin_folder $HOME/goamanc/interbin
function ner
  set original_dir $PWD
  set folder $interbin_folder/node
  set file $interbin_folder/node/$argv[1].mjs;
  vim $file
  node --experimental-modules --no-warnings $file
  cd $original_dir
end
function nr
  set file $interbin_folder/node/$argv[1].js;
  node $file
end
function per
  set file $interbin_folder/python/$argv[1].py;
  vim $file
  python3 $file
end
function pr
  set file $interbin_folder/python/$argv[1].py;
  python3 $file
end
complete -x -c per -a "(ls $interbin_folder/python | grep -E '.py\$' | sed 's/.py\$//g')"
complete -x -c pr -a "(ls $interbin_folder/python | grep -E '.py\$' | sed 's/.py\$//g')"
complete -x -c ner -a "(ls $interbin_folder/node | grep -E '.js\$' | sed 's/.js\$//g')"
complete -x -c nr -a "(ls $interbin_folder/node | grep -E '.js\$' | sed 's/.js\$//g')"

abbr bt bluetooth

abbr s pavucontrol

abbr gobin cd $HOME/goamanc/bin
abbr goser cd $HOME/goamanc/.config/systemd/user

function copyservices
  for file in (find $HOME/goamanc/.config/systemd/system -type f -name '*.service')
    sudo cp $file /etc/systemd/system
  end
  for file in (find $HOME/goamanc/.config/systemd/system -type f -name '*.timer')
    sudo cp $file /etc/systemd/system
  end
  sudo systemctl daemon-reload
end

abbr st sudo systemctl
abbr sta sudo systemctl start
abbr ste sudo systemctl enable
abbr str sudo systemctl restart
abbr sto sudo systemctl stop
abbr sts sudo systemctl status

abbr stu systemctl --user
abbr stau systemctl --user start
abbr steu systemctl --user enable
abbr stru systemctl --user restart
abbr stou systemctl --user stop
abbr stsu systemctl --user status

set prof_fold $HOME/odootemp/perfs/
function prof
  set name $argv[1]
  gprof2dot -f pstats -o $prof_fold/$name.xdot  $prof_fold/$name.profile
  xdot $prof_fold/$name.xdot
end
complete -x -c prof -a "(ls $prof_fold | grep -E '.profile\$' | sed 's/.profile\$//g')"

function get_all_git_projects_subscribed
#   echo "\
# /!\ implement me /!\\
# Should return tables/objects with these values:
# GitProject{
#   ID: ID
#   name: String
#   local_folder: Path
#   personal_project: Boolean
# 
#   # functions
#   is_installed_localy: Boolean
#   is_sync_with_remote: Boolean
#   install_localy(id)
#   temp_commit_and_push(id)
# }
# "
end

abbr goner cd ~/goamanc/interbin/node
abbr sshgoa ssh -t root@167.86.75.203
abbr sshpower ssh -t root@167.86.75.203 'cd /root/goa-power; fish'
abbr sp "ssh -t root@167.86.75.203 'cd /root/goa-power; fish'"

abbr grepe grep -E
abbr ins 'cd "$HOME/Downloads/Beachbody Insanity/"; xdg-open .'

function list_projects
  echo (ls $HOME/projects/self)
end

# restart services in docker-compose
function docker-compose-restart
	docker-compose stop $argv[1]
	docker-compose rm -f -v $argv[1]
	docker-compose create --force-recreate $argv[1]
	docker-compose start $argv[1]
end

function get_git_projects
  find $HOME -name "*.git" -type d 2>/dev/null
end

abbr hist "history | head -n 15 | tac | xclip -selection clipboard -i"
abbr r yarn run
abbr yai yarn install
abbr ya yarn add
abbr yad yarn add -D 
abbr do docker
abbr dc docker-compose
abbr lof lsof -P -n -i 
abbr killodoobin "ps aux | grep odoo-bin | head -n-1 | onespace | cuts -f2 | xargs kill -9"
abbr kob "set ports (ps aux | grep odoo-bin | grep -v grep | sed 's/  */ /g' | cut -d' ' -f2); echo ports:;echo \$ports; echo \$ports | xargs kill -9"
# abbr kob "ps aux | grep odoo-bin | head -n-1 | onespace | xargs kill -9"
function mvtemp
  mv $argv[1] ~/odootemp/$argv[1]
end
function d
  nemo -n $argv 1>/dev/null 2>&1
end
abbr algo "xdg-open ~/Downloads/SkienaTheAlgorithmDesignManual.pdf"

function listOdooChange 
  echo (cd ../odoo; git diff --name-status master..(currentBranch) | onespace | cuts -f2 | xargs -i echo (pwd)/'{}'; cd ../enterprise; git diff --name-status master..(currentBranch) | onespace | cuts -f2 | xargs -i echo (pwd)/'{}') | sed -E 's/ /\\n/g'
end

function ctee
  xclip -selection clipboard -i
end

abbr myip "ifconfig | grep wlp2s0: -A 1 | tail -n 1 | onespace |cuts -f3"
#abbr gitgrep "git log --grep="

# less color
abbr lesscol "less -r"
# ssh-add and systemd import
#abbr sa 'ssh-add ; sudo systemctl --system set-environment SSH_AGENT_PID=$SSH_AGENT_PID; sudo systemctl --system set-environment SSH_AUTH_SOCK=$SSH_AUTH_SOCK '
abbr sa 'ssh-add'

abbr nd npm run dev

function git-worktree-add
  set branch $argv[1]
  set worktree_dir (pwd)-worktree 
  mkdirp worktree_dir
  echo git worktree add $worktree_dir/$branch $branch
  git worktree add $worktree_dir/$branch $branch
end
abbr gwa git-worktree-add

function git-worktree-go
  set git_dir (pwd | sed 's/-worktree.*//')
  if test $argv[1]
    cd $git_dir-worktree/$argv[1]
  else
    cd $git_dir
  end
end
abbr gwg git-worktree-go

# function git-worktree-remove
#   set branch $argv[1]
#   #set worktree_dir (pwd)-worktree 
#   echo git worktree remove $branch
#   git worktree remove $branch
# end
# abbr gwr git-worktree-remove
abbr gwr git worktree remove $branch

function git-worktree-list
  ls -al (pwd)-worktree 
end
abbr gwl git-worktree-list

function git-worktree-cd
  cd (pwd)-worktree/$argv[1]
end
abbr gwcd git-worktree-cd

function reserve_npm_name
  set dir $argv[1]
  mkdir $dir; cd $dir; npm init; npm publish; cd ..; rm -rf $dir;
end

# add temp and push
abbr gri 'git rebase -i (odooBranchVersion)'
abbr gra 'git rebase --abort'
abbr gri10 'git rebase -i HEAD~10'
abbr gat 'git add .; git commit -m "temp" --no-verify'
abbr gcp 'git cherry-pick'
abbr gcpc 'git cherry-pick --continue'
abbr gcpi 'git cherry-pick --ignore'
abbr gcpd "git log --pretty=oneline --decorate=no master..master-debug-nby | fzf --bind 'enter:execute(git cherry-pick {1})'"

abbr gatp 'git add .; git commit -m "temp"; git push origin HEAD -f;'
abbr gatpr 'git add .; git commit -m "temp"; git push origin HEAD -f; git reset HEAD~'
abbr gca 'git commit --amend'
abbr gam 'git add .; git commit --amend'
abbr atr 'git add .; git commit -m "temp"; git rebase -i HEAD~5'
abbr grc 'git rebase --continue'
abbr grs 'git rebase --skip'
abbr grh 'git reset HEAD~'
abbr gap 'git add .'
# git commit reuse
abbr gcor 'git commit --reuse-message=ORIG_HEAD'
# abbr gp 'git pull'
abbr gp 'git push origin HEAD'
abbr gpu 'git push'

abbr an "2>/dev/null"

abbr pol polybar-git

abbr ya 'yarn add'
# Yarn add -D
abbr yad 'yarn add -D'
abbr yi 'yarn install'

abbr gpf 'git push origin HEAD -f'
abbr gpfo 'git push odoo-dev HEAD -f'
# abbr gpfo1 'git push odoo-dev HEAD:master-phoenix-1-nby -f'
# abbr gpfo2 'git push odoo-dev HEAD:master-phoenix-2-nby -f'
# abbr gpfo3 'git push odoo-dev HEAD:master-phoenix-3-nby -f'
# abbr gpfo4 'git push odoo-dev HEAD:master-phoenix-4-nby -f'
# abbr gpfo5 'git push odoo-dev HEAD:master-phoenix-5-nby -f'
abbr gpfo1 'git push odoo-dev HEAD:master-mysterious-egg-1-nby -f'
abbr gpfo2 'git push odoo-dev HEAD:master-mysterious-egg-2-nby -f'
abbr gpfo3 'git push odoo-dev HEAD:master-mysterious-egg-3-nby -f'
abbr gpfo4 'git push odoo-dev HEAD:master-mysterious-egg-4-nby -f'
abbr gpfo5 'git push odoo-dev HEAD:master-mysterious-egg-5-nby -f'
abbr grih 'git rebase -i master-mysterious-egg'

function noh
  /usr/bin/nohup $argv >/dev/null 2>/dev/null
end

abbr ow "odo worktree"
abbr os "odo start"
# odoo git
function ogit
  cd ../odoo
  git $argv
  cd ../enterprise
  git $argv
end

function removeAggridLicenceFile
  set file $argv[1]
  set pattern $argv[2]
  echo $pattern
  #set file ./node_modules/@ag-grid-enterprise/excel-export/dist/excel-export.esm.js;
  #set file ./node_modules/@ag-grid-enterprise/excel-export/dist/excel-export.cjs.js
  #echo file: $file
  set tempfile /tmp/temAggridFile
  set temp2 /tmp/temAggridFile2
  cp $file $tempfile
  #cat $tempfile
  echo $file
  #grep -vF $pattern $tempfile
  #echo foo:
  #echo $foo
  grep -vF $pattern $tempfile > $file
  #cp $tempfile $file
end

function searchAgGrid
  grep -Rl "ag-Grid Enterprise License" .
end
function removeAllAg
  #grep -r "console.error('****************************************************************************************************************');" .
  for f in (grep -Rl "ag-Grid Enterprise License" .)
    removeAggridLicence $f
    echo file: $f
  end
end

abbr j "journalctl -o cat -f -u"
abbr jpo "journalctl -o cat -f -u goapower"
abbr ju "journalctl --user -o cat -f -u"
function ggrep 
  git diff-index -U -G $argv HEAD
end
function ggreps
  git diff-index -U --cached -G $argv HEAD
end

# ####################################################################################################
# # Pulse audio
# ####################################################################################################

# ## Pulse audio has a module to restore the an application in a previous sink
# # which is pretty annoying. To remove that behavior, change line
# # `load-module module-stream-restore restore_device=false`
# # in `/etc/pulse/default.pa`
# # See https://www.freedesktop.org/wiki/Software/PulseAudio/Documentation/User/Modules/#index28h3
# # and https://www.reddit.com/r/linuxaudio/comments/939wwz/how_correctly_to_switch_pulseaudios_default_sink/
# # load-module module-stream-restore restore_device=false
# #
# ## Bluetooth audio HSP mode is awefull.
# # source: https://askubuntu.com/questions/1205749/how-permanently-remove-or-disable-hsp-hfp-bluetooth-profile 
# # Open (sudo) /etc/pulse/default.pa and add auto_switch=false like this:
# # ```
# # load-module module-bluetooth-policy auto_switch=false  # <---- !
# # ```

# function sink-list-id
#   pactl list short sink-inputs | onespace | cuts -f 1
# end

# set sink_analog alsa_output.pci-0000_00_1f.3.analog-stereo
# # set sink_bluetooth bluez_sink.28_11_A5_77_FE_D2.a2dp_sink
# function get_bluetooth_sink
#   pactl list short sinks | grep module-bluez5-device.c | onespace | cuts -f2
# end
# # set sink_bluetooth module-bluez5-device.c

# function sink_to_analog
#   for sink in (sink-list-id ); pactl move-sink-input $sink $sink_analog; end
# end
# function sink_to_bluetooth
#   for sink in (sink-list-id ); pactl move-sink-input $sink (get_bluetooth_sink); end
# end
# abbr pata sink_to_analog
# abbr patb sink_to_bluetooth

# ####################################################################################################
# # Bluetooth
# ####################################################################################################

# set bt_marshal 00:12:6F:57:B8:9C
# set bt_bose 28:11:A5:77:FE:D2
# set bt_earbuds_bose 78:2B:64:25:70:85
# set bt_room FC:58:FA:C0:03:B9
# function bt_disconnect_all
#   echo disconnect $bt_marshal\nexit\n | bluetoothctl
#   echo disconnect $bt_bose\nexit\n | bluetoothctl
#   echo disconnect $bt_earbuds_bose\nexit\n | bluetoothctl
# end
# function bluetooth_sync
#   pactl set_default_sink (get_bluetooth_sink)

#   sink_to_bluetooth
#   sleep 1
#   sink_to_bluetooth
#   sleep 5
#   sink_to_bluetooth
#   sleep 5
#   sink_to_bluetooth

#   pactl set_default_sink (get_bluetooth_sink)
# end
# # bluetooth bose
# function btbose
#   # echo disconnect $bt_marshal\nexit\n | bluetoothctl
#   # echo disconnect $bt_room\nexit\n | bluetoothctl
#   bt_disconnect_all
#   echo connect $bt_bose| bluetoothctl
#   bluetooth_sync
#   pactl set_default_sink (get_bluetooth_sink)
# end
# function btroom
#   #echo disconnect $bt_marshal\nexit\n | bluetoothctl
#   bt_disconnect_all
#   echo connect $bt_room| bluetoothctl
#   bluetooth_sync
# end
# # bluetooth marshal
# function btmarshal
#   bt_disconnect_all
#   # echo disconnect $bt_bose\nexit\n | bluetoothctl

#   echo connect $bt_marshal | bluetoothctl
#   bluetooth_sync
# end
# function btearbuds
#   bt_disconnect_all
#   # echo disconnect $bt_earbuds_bose\nexit\n | bluetoothctl
#   echo connect $bt_earbuds_bose | bluetoothctl
#   bluetooth_sync
# end
# function btdisconnect
#   bt_disconnect_all
#   #echo disconnect $bt_marshal\nexit\n | bluetoothctl
#   #echo disconnect $bt_bose\nexit\n | bluetoothctl
#   #echo disconnect $bt_room\nexit\n | bluetoothctl
#   sink_to_analog
# end

# abbr btb btbose
# abbr btm btmarshal
# abbr btr btroom
# abbr btd btdisconnect

####################################################################################################
# Terminator
####################################################################################################
function setTerminatorDefaultProfile 
  set user $argv[1]
  set file /home/goaman/goamanc/.config/terminator/config
  sed -Ei "s/(\s+profile = )(.*)/\1$user/" $file
end
abbr stg 'setTerminatorDefaultProfile "Goaman"; killall terminator'
abbr stgo 'setTerminatorDefaultProfile "Goaman opaque"; killall terminator'


####################################################################################################
# Jabberwock
####################################################################################################

# function cpb
#   set from /home/goaman/projects/external/odoo/jabberwock/build/odoo
#   set to ~/src/master-jabberwock-build-sge-age-dmo-chm-nby/odoo/addons/web_editor/static/lib/jabberwock
#   cp $from/odoo-integration.js $to/jabberwock.js
#   cp $from/odoo-integration.css $to/jabberwock.css
# end
# abbr cpd cp /home/goaman/projects/external/odoo/jabberwock/dev/odoo-integration-dev.js ~/src/master-jabberwock-nby/odoo/addons/web_editor/static/lib/jabberwock/jabberwock.js
# abbr cpb cp /home/goaman/projects/external/odoo/odoo-editor/odoo/odoo-dev-lib.js /home/goaman/src/master-odoo-editor-integration/odoo/addons/web_editor/static/src/js/editor/odoo-editor.js
function cpb
  set branchTo $argv[1]
  if not test -n "$branchTo"
    set branchTo master-odoo-editor-integration-nby
  end

  set fromFilejs $HOME/projects/external/odoo/odoo-editor/build/odoo-editor-bundle.js
  set toFilejs $HOME/src/$branchTo/odoo/addons/web_editor/static/lib/odoo-editor/odoo-editor.js
  set fromFilecss $HOME/projects/external/odoo/odoo-editor/build/odoo-editor-bundle.css
  set toFilecss $HOME/src/$branchTo/odoo/addons/web_editor/static/lib/odoo-editor/odoo-editor.css

  echo rm $toFilejs
  rm $toFilejs
  echo cp $fromFilejs $toFilejs
  cp $fromFilejs $toFilejs


  echo rm $toFilecss
  rm $toFilecss
  echo cp $fromFilecss $toFilecss
  cp $fromFilecss $toFilecss
end

function cpd
  set branchTo $argv[1]
  if not test -n "$branchTo"
    set branchTo master-odoo-editor-integration-nby
  end

  set fromFilejs $HOME/projects/external/odoo/odoo-editor/build/odoo-editor-bundle.js
  set toFilejs $HOME/src/$branchTo/odoo/addons/web_editor/static/lib/odoo-editor/odoo-editor.js
  set fromFilecss $HOME/projects/external/odoo/odoo-editor/build/odoo-editor-bundle.css
  set toFilecss $HOME/src/$branchTo/odoo/addons/web_editor/static/lib/odoo-editor/odoo-editor.css

  echo ln -sf $fromFilejs $toFilejs
  ln -sf $fromFilejs $toFilejs

  echo ln -sf $fromFilecss $toFilecss
  ln -sf $fromFilecss $toFilecss
end
abbr lnd 'set file /home/goaman/src/saas-13.5-jabberwock-nby/odoo/addons/web_editor/static/lib/jabberwock/jabberwock.js; rm $file; ln -s /home/goaman/projects/external/odoo/jabberwock/build/odoo/odoo-integration.js $file'

function buildEditor
  set branchTo $argv[1]
  if not test -n "$branchTo"
    set branchTo master-odoo-editor-integration-nby
  end
  set startPath (pwd)

  cd $HOME/projects/external/odoo/odoo-editor/
  set lastCommitId (git log -n1 --format="%h")
  cd $HOME/src/$branchTo/odoo
  git add .
  git stash
  cpb $branchTo
  git add .
  git commit -m "[IMP] web_editor: update odoo-editor lib to commit $lastCommitId"

  cd $startPath

end



function build_jabberwock_odoo
  set original_dir (pwd)
  #set jabberwock_path /home/goaman/projects/external/odoo/jabberwock-worktree/master-build
  set jabberwock_path /home/goaman/projects/external/odoo/jabberwock
  set build_path /home/goaman/src/14.0-jabberwock-build-sge-age-dmo-chm-nby

  cd $jabberwock_path
  git fetch origin master
  git reset --hard origin/master

  npm run build:odoo

  #cd ~/src/saas-13.5-jabberwock-sge-age-dmo-chm-nby/odoo
  #git pull
  cd ~/src/14.0-jabberwock-build-sge-age-dmo-chm-nby/odoo
  #git pull --rebase odoo-dev 14.0-jabberwock-sge-age-dmo-chm-nby
  #git reset --hard 14.0-jabberwock-sge-age-dmo-chm-nby
  git rebase -i 14.0-jabberwock-sge-age-dmo-chm-nby
  cp $jabberwock_path/build/odoo/odoo-integration.js $build_path/odoo/addons/web_editor/static/lib/jabberwock/jabberwock.js
  cp $jabberwock_path/build/odoo/odoo-integration.css $build_path/odoo/addons/web_editor/static/lib/jabberwock/jabberwock.css
  git add .
  #git commit -m "add build"
  git commit --amend --no-edit
  #git commit --amend 
  git push odoo-dev HEAD -f

  #cd ../enterprise
  #git reset --hard 14.0-jabberwock-sge-age-dmo-chm-nby
  #git commit --allow-empty -m "update runbot"
  #git commit -m "add build"
  #git push odoo-dev HEAD -f

  cd $original_dir
end

abbr bjo build_jabberwock_odoo

function build_jabberwock
  set original_dir (pwd)

  cd /home/goaman/projects/external/odoo/jabberwock
  npm run build-odoo
  cd $original_dir
end

function reset_test_odoo
  set original_dir (pwd)

  cd ~/src/master-jabberwock-age-dmo-chm-nby-test/odoo
  git reset --hard master-jabberwock-age-dmo-chm-nby
  cp /home/goaman/projects/external/odoo/jabberwock/build/odoo/odoo-integration.js /home/goaman/src/master-jabberwock-age-dmo-chm-nby-test/odoo/addons/web_editor/static/lib/jabberwock/jabberwock.js

  #cd ../enterprise

  # run

  cd $original_dir
end

function test_odoo_lint
  set original_dir (pwd)

  cd ~/src/master-jabberwock-age-dmo-chm-nby-test/odoo
  git reset --hard master-jabberwock-age-dmo-chm-nby
  cp /home/goaman/projects/external/odoo/jabberwock/build/odoo/odoo-integration.js /home/goaman/src/master-jabberwock-age-dmo-chm-nby-test/odoo/addons/web_editor/static/lib/jabberwock/jabberwock.js

  #cd ../enterprise

  # run
  dropdb master-jabberwock-age-dmo-chm-nby-test
  odo start master-jabberwock-age-dmo-chm-nby-test -i test_lint -p 9874 -a "--test-enable --test-tags /test_lint --stop-after-init --log-level=test --max-cron-threads=0"

  cd $original_dir
end

function sl
  while true
    osascript -e 'tell application "System Events" to click at {1, 1}'
    sleep 10
  end
end
function slLinux
  while true
    sleep 1
    xdotool mousemove 2560 1440
    sleep 1
    xdotool mousemove 2560 1439
  end
end

function showPerf
  ls -lh /home/goaman/projects/external/odoo/jabberwock/build/odoo/odoo-integration.js

  rm /home/goaman/projects/external/odoo/jabberwock/build/odoo/odoo-integration-gzip.js
  gzip --best /home/goaman/projects/external/odoo/jabberwock/build/odoo/odoo-integration.js -c > /home/goaman/projects/external/odoo/jabberwock/build/odoo/odoo-integration-gzip.js
  ls -lh /home/goaman/projects/external/odoo/jabberwock/build/odoo/odoo-integration-gzip.js

  rm /home/goaman/projects/external/odoo/jabberwock/build/odoo/odoo-integration-brotli.js
  brotli /home/goaman/projects/external/odoo/jabberwock/build/odoo/odoo-integration.js -o /home/goaman/projects/external/odoo/jabberwock/build/odoo/odoo-integration-brotli.js
  ls -lh /home/goaman/projects/external/odoo/jabberwock/build/odoo/odoo-integration-brotli.js
end

function perfbuild
  cat /tmp/perfodoo | grep "| " | grep KiB| onespace | sort -g -k4,4 -t ' ' | tac
  cat /tmp/perfodoo | grep "| " | grep bytes| onespace | sort -g -k4,4 -t ' ' | tac
end

abbr rj systemctl --user restart jabberwock

function build_odoo_test
  set path (pwd)
  set jabberwock_path ~/projects/external/odoo/jabberwock
  set repo $argv[1]
  set strategy $argv[2]
  set odoo_tmp_path /tmp/build-odoo-test/$repo

  # set now (date +"%s")

  rm -rf $odoo_tmp_path
  mkdir -p $odoo_tmp_path
  cd $odoo_tmp_path
  git init .


  cd $jabberwock_path
  for i in 7 6 5 4 3 2 1 0
    echo --------------------------
    echo ------- build $i ----------
    echo --------------------------
    cd $jabberwock_path
    git checkout master
    echo strategy: $strategy
    if test $strategy -eq 1
      git checkout HEAD~$i
    end
    rm -rf build/odoo
    npm run build:odoo
    cp build/odoo/odoo-integration.css $odoo_tmp_path/odoo-integration.css
    cp build/odoo/odoo-integration.js $odoo_tmp_path/odoo-integration.js

    cd $odoo_tmp_path
    git add .
    git commit -am "commit $i"
  end
  git checkout master -f

  cd $odoo_tmp_path
  git remote add origin git@github.com:Goaman/$repo.git
  git push origin master -f

  cd $path
end


abbr kdis killall Discord

abbr rmw remove_warn
function remove_warn
  sed -i '/console.warn/d' $argv[1]
end
abbr rmw remove_warn

# function goa
#   set path pwd
#   cd /home/goaman/projects/self/programming/goa/goapower
#   node -r source-map-support/register /home/goaman/projects/self/programming/goa/goapower/packages/goapower-core-cli/dist/ts/goapower-core-cli/src/cli.js $argv
#   cd $pwd
# end

function power-output
  #tput smcup
  clear
  clear
  set path ./stdout.log
  sleep 0.1
  cat $path
  set filebefore ""
  while sleep 0.1
    set file (cat $path)
    set length1 (string length (string join $file))
    set length2 (string length (string join $filebefore))

    if test $length1 != $length2 2>/dev/null
      clear
      cat $path
    end
    set filebefore $file
  end
end

function no
  bash -c "$argv 1>/dev/null 2>/dev/null &"
end

abbr xo xdg-open
abbr xon nohv xdg-open
abbr o xdg-open
abbr o open

# function build_goabar
#   echo cd /home/goaman/projects/self/programming/goa/goapower/; yarn run build:electron $argv
#   cd /home/goaman/projects/self/programming/goa/goapower/; yarn run build:electron $argv
# end
# function kill_goabar
#   for p in (ps aux |grep node | grep power | grep electron | grep app.js | awk '{print $2}'); kill -9 $p; end
# end
# function start_goabar
#   # bash -c "node --cpu-prof --heap-prof  /home/goaman/projects/self/programming/goa/goapower/node_modules/.bin/electron --enable-transparent-visuals --disable-gpu /home/goaman/projects/self/programming/goa/goapower/packages/goapower-core-electron/dist/app.js $argv &"
#   bash -c "node /home/goaman/projects/self/programming/goa/goapower/node_modules/.bin/electron --enable-transparent-visuals --disable-gpu /home/goaman/projects/self/programming/goa/goapower/packages/goapower-core-electron/dist/app.js $argv &"
# end
# function restart_goabar
#   kill_goabar
#   start_goabar $argv
# end

function locate_with_home
  locate $argv
  locate -d $HOME/locatedb $argv
end

function updatedb_with_home
  sudo updatedb $argv
  updatedb -l 0 --output=$HOME/locatedb -U $HOME $argv
end

abbr lo locate_with_home
abbr up update_with_home
abbr mime handlr
abbr codeng code -n -g

# odoo odoo dir
function odir
  if [ $argv[1] = 'master' ]
    cd ~/odoo_root/main_repo/odoo
  else
    cd ~/odoo_root/workspaces/$argv[1]/odoo
  end
end

function owod
  odir $argv[1]
  owo $argv[1]
end

function maketemplate
  dropdb $argv[1]-template
  createdb $argv[1]-template -T $argv[1]
end

function usetemplate
  dropdb $argv[1]
  createdb $argv[1] -T $argv[1]-template
end

function head
  ghead $argv
end


function install_power_packages
  set -l npm_packages assert buffer child_process cluster crypto dgram dns domain events fs http https net os path punycode querystring readline stream string_decoder timers tls tty url util v8 vm zlib
  for package_path in /Users/goaman/projects/self/programming/goa/goa-power/packages/*
    if test -d $package_path
      echo == $package_path ==
      cd $package_path
      for lib in (ack '^import((?!\'\.).)*;' -h | grep -E "'[^']*';" -o | cut -c2- | rev | cut -c3- | rev | sort| uniq | grep -vE "^[^@].*/")
        if not contains $lib $npm_packages
          echo \$ rush add -p $lib
          # rush add -p $lib
        end
      end

      echo
    end
  end
end

# function movePackage
#   set -l package_dir $argv[1]
#   set -l package_name $argv[2]
#   echo package_dir $package_dir
#   echo package_name $package_name
# end

function foo
  set -l goapower_dir /Users/goaman/projects/self/programming/goa/goa-power
  for package_dir in packages packages-goaman
    echo $package_dir:

    set -l current_path $goapower_dir/$package_dir
    for package_name in (ls $current_path)
      set -l node_module_path $current_path/$package_name/node_modules
      set -l to_path /Users/goaman/projects/self/programming/goa/goa-power/dist/ts/$package_dir/$package_name
      if test -e $node_module_path && test -e $to_path
        echo \$ ln -s $node_module_path $to_path/node_modules
        # ln -s $node_module_path $to_path/node_modules
      end
    end
    echo
  end
end

abbr opf odoo_push_force

abbr ra rush add -p


abbr gcn "git checkout master-phoenix-nby"
# rebase phoenix
abbr rp "odo_fetch_reset_dev master-phoenix-massmailing; git rebase master-phoenix-massmailing -i"
abbr rb "git rebase master-phoenix-massmailing -i"
# abbr rb "git rebase -i (odooBranchVersion)"
abbr gcpn git checkout -b master-phoenix--nby
abbr h "set out (history | fzf --no-sort | tr -d '\n'); if test -n \"\$out\"; echo \$out | tr -d '\n' | pbcopy; end"
