#!/bin/fish

abbr esa "vim ~/.config/fish/alias/main.fish;source ~/.config/fish/alias/main.fish"
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
    set pythonProcess (listport $argv[1] | grep python | head -n1 | onespace | cuts -f 2)
    echo first python process: $pythonProcess
    kill -9 $pythonProcess
end
# abbr kp "killport"
# #
# #launchd

# # git
# abbr gcl "git clone"
# abbr ggcl "gogit;git clone"
# abbr gh "git help"
# abbr gact 'git add .; git commit -m "temp"'
# abbr gpd "git push odoo-dev (currentBranch) -f"

#
# todo:
# page or article about automatic alias creation depending on my usage
#

abbr gln "git log"
abbr gl "git log --decorate"
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

abbr jup "cd $HOME/projects/jupyter; jupyter notebook; cd -"

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
abbr gor "cd ~/projects/self/rust/testrust"
abbr gopo2 "cd ~/projects/self/goa-power-worktree/master2"
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
  echo "Amazing, you just begin a new day!!!"
  echo "May the force be with you."
  echo "Here is your file:"
  echo (date +"%s-%d-%m-%Y").md

  touch $folder/(date +"%s-%d-%m-%Y").md
end
abbr newday "touchnow ~/notes/days/"
abbr etoday 'cd ~/notes/days/; vim (ls | sort | tail -n1); cd -'

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

abbr se "sensation --debug --config $HOME/goamanc/.config/sensation/config.py 4"
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
# #set-default-sink-vol
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
  xrandr --output eDP-1 --brightness $level
  xrandr --output HDMI-2 --brightness $level
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
  sudo cp $HOME/goamanc/services/*.service /etc/systemd/system
  sudo cp $HOME/goamanc/services/*.timer /etc/systemd/system
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
abbr sshgoa ssh -t root@80.241.221.164 fish

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
abbr kob "ps aux | grep odoo-bin | head -n-1 | onespace | cuts -f2 | xargs kill -9"
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
  set git_dir (pwd | sed 's/-worktree$//')
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
abbr gri 'git rebase -i HEAD~5'
abbr gra 'git rebase --abort'
abbr gri10 'git rebase -i HEAD~10'
abbr gat 'git add .; git commit -m "temp"'
abbr gcp 'git cherry-pick'
abbr gatp 'git add .; git commit -m "temp"; git push origin HEAD -f;'
abbr gatpr 'git add .; git commit -m "temp"; git push origin HEAD -f; git reset HEAD~'
abbr gam 'git add .; git commit --amend'
abbr atr 'git add .; git commit -m "temp"; git rebase -i HEAD~5'
abbr grc 'git rebase --continue'
abbr grs 'git rebase --skip'
abbr grh 'git reset HEAD~'
abbr gap 'git add .'
# git commit reuse
abbr gcor 'git commit --reuse-message=ORIG_HEAD'
abbr gp 'git pull'
abbr gpu 'git push'

abbr an "2>/dev/null"

abbr pol polybar-git

abbr ya 'yarn add'
# Yarn add -D
abbr yad 'yarn add -D'
abbr yi 'yarn install'

abbr gpf 'git push origin HEAD -f'
abbr gpfo 'git push odoo-dev HEAD -f'

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
function removeAggridLicence
  set file $argv[1]
  removeAggridLicenceFile $file "console.error('****************************************************************************************************************');"
  removeAggridLicenceFile $file "console.error('***************************************** ag-Grid Enterprise License *******************************************');"
  removeAggridLicenceFile $file "console.error('****************************************** License Key Not Found ***********************************************');"
  removeAggridLicenceFile $file "console.error('* All ag-Grid Enterprise features are unlocked.                                                                *');"
  removeAggridLicenceFile $file "console.error('* This is an evaluation only version, it is not licensed for development projects intended for production.     *');"
  removeAggridLicenceFile $file "console.error('* If you want to hide the watermark, please email info@ag-grid.com for a trial license.                        *');"

  removeAggridLicenceFile $file "console.error('****************************************************************************************************************************');"
  removeAggridLicenceFile $file "console.error('********************************************* ag-Grid Enterprise License ***************************************************');"
  removeAggridLicenceFile $file "console.error('*************************** License not compatible with installed version of ag-Grid Enterprise. ***************************');"
  removeAggridLicenceFile $file 'console.error("* Your license for ag-Grid Enterprise expired on " + formattedExpiryDate + " but the version installed was released on " + formattedReleaseDate + ". *");'
  removeAggridLicenceFile $file "console.error('* Please contact info@ag-grid.com to renew your subscription to new versions.                                              *');"
  removeAggridLicenceFile $file "console.error('****************************************************************************************************************************');"
  removeAggridLicenceFile $file "console.error('****************************************************************************************************************************');"

  removeAggridLicenceFile $file "console.error('*****************************************************************************************************************');"
  removeAggridLicenceFile $file "console.error('***************************************** ag-Grid Enterprise License ********************************************');"
  removeAggridLicenceFile $file "console.error('********************************************* Invalid License ***************************************************');"
  removeAggridLicenceFile $file "console.error('* Your license for ag-Grid Enterprise is not valid - please contact info@ag-grid.com to obtain a valid license. *');"
  removeAggridLicenceFile $file "console.error('*****************************************************************************************************************');"
  removeAggridLicenceFile $file "console.error('*****************************************************************************************************************');"

  removeAggridLicenceFile $file "console.error('*****************************************   Trial Period Expired.    *******************************************');"
  removeAggridLicenceFile $file 'console.error("* Your license for ag-Grid Enterprise expired on " + formattedExpiryDate + ".                                                *");'
  removeAggridLicenceFile $file "console.error('* Please email info@ag-grid.com to purchase a license.                                                         *');"


end
function removeAllAggrid
  removeAggridLicence $HOME/projects/self/programming/goa/goa-power/node_modules/@ag-grid-enterprise/core/dist/cjs/licenseManager.js
  #removeAggridLicence $HOME/projects/self/programming/goa/goa-power/node_modules/@ag-grid-enterprise/clipboard/dist/clipboard.esm.js
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

####################################################################################################
# Pulse audio
####################################################################################################

function sink-list-id
  pactl list short sink-inputs | onespace | cuts -f 1
end

set sink_analog alsa_output.pci-0000_00_1f.3.analog-stereo
# set sink_bluetooth bluez_sink.28_11_A5_77_FE_D2.a2dp_sink
function get-bluetooth-sink
  pactl list short sinks | grep module-bluez5-device.c | onespace | cuts -f2
end
# set sink_bluetooth module-bluez5-device.c

function sink-to-analog
  for sink in (sink-list-id ); pactl move-sink-input $sink $sink_analog; end
end
function sink-to-bluetooth
  for sink in (sink-list-id ); pactl move-sink-input $sink (get-bluetooth-sink); end
end
abbr pata sink-to-analog
abbr patb sink-to-bluetooth

####################################################################################################
# Bluetooth
####################################################################################################

set bt_marshal 00:12:6F:57:B8:9C
set bt_bose 28:11:A5:77:FE:D2
# bluetooth bose
function btbose
  echo disconnect $bt_marshal\nexit\n | bluetoothctl
  echo connect $bt_bose| bluetoothctl
  sink-to-bluetooth
  sleep 1
  sink-to-bluetooth
  sleep 5
  sink-to-bluetooth
  sleep 5
  sink-to-bluetooth
end
# bluetooth marshal
function btmarshal
  echo disconnect $bt_bose\nexit\n | bluetoothctl
  echo connect $bt_marshal | bluetoothctl
  sink-to-bluetooth
  sleep 1
  sink-to-bluetooth
  sleep 5
  sink-to-bluetooth
  sleep 5
  sink-to-bluetooth
end
function btdisconnect
  echo disconnect $bt_marshal\nexit\n | bluetoothctl
  echo disconnect $bt_bose\nexit\n | bluetoothctl
  sink-to-analog
  sleep 5
  sink-to-analog
end

abbr btb btbose
abbr btm btmarshal
abbr btd btdisconnect

abbr cpb cp /home/odoo/projects/external/odoo/jabberwock/build/odoo/odoo-integration-dev.js ~/src/master-implement-jabberwock-nby/odoo/addons/web_editor/static/lib/jabberwock/jabberwock.js
abbr cpd cp /home/odoo/projects/external/odoo/jabberwock/dev/odoo-integration-dev.js ~/src/master-implement-jabberwock-nby/odoo/addons/web_editor/static/lib/jabberwock/jabberwock.js
abbr lnd 'set file /home/odoo/src/master-jabberwock-nby/odoo/addons/web_editor/static/lib/jabberwock/jabberwock.js; rm $file; ln -s /home/odoo/projects/external/odoo/jabberwock/build/odoo/odoo-integration.js $file'



function build_jabberwock_odoo
  set original_dir (pwd)

  cd /home/odoo/projects/external/odoo/jabberwock
  npm run build-odoo

  cd ~/src/master-jabberwock-build-age-dmo-chm-nby/odoo
  git reset --hard master-jabberwock-age-dmo-chm-nby
  cp /home/odoo/projects/external/odoo/jabberwock/build/odoo/odoo-integration.js /home/odoo/src/master-jabberwock-build-age-dmo-chm-nby/odoo/addons/web_editor/static/lib/jabberwock/jabberwock.js
  git add .
  git commit -m "add build"
  git push odoo-dev HEAD -f

  #cd ../enterprise
  #git reset --hard master-jabberwock-age-dmo-chm-nby
  #git commit --allow-empty -m "update runbot"
  #git commit -m "add build"
  #git push odoo-dev HEAD -f

  cd $original_dir
end

abbr bjo build_jabberwock_odoo

function build_jabberwock
  set original_dir (pwd)

  cd /home/odoo/projects/external/odoo/jabberwock
  npm run build-odoo
  cd $original_dir
end

function reset_test_odoo
  set original_dir (pwd)
  

  cd ~/src/master-jabberwock-age-dmo-chm-nby-test/odoo
  git reset --hard master-jabberwock-age-dmo-chm-nby
  cp /home/odoo/projects/external/odoo/jabberwock/build/odoo/odoo-integration.js /home/odoo/src/master-jabberwock-age-dmo-chm-nby-test/odoo/addons/web_editor/static/lib/jabberwock/jabberwock.js

  #cd ../enterprise

  # run

  cd $original_dir
end

function test_odoo_lint
  set original_dir (pwd)

  cd ~/src/master-jabberwock-age-dmo-chm-nby-test/odoo
  git reset --hard master-jabberwock-age-dmo-chm-nby
  cp /home/odoo/projects/external/odoo/jabberwock/build/odoo/odoo-integration.js /home/odoo/src/master-jabberwock-age-dmo-chm-nby-test/odoo/addons/web_editor/static/lib/jabberwock/jabberwock.js

  #cd ../enterprise

  # run
  dropdb master-jabberwock-age-dmo-chm-nby-test
  odo start master-jabberwock-age-dmo-chm-nby-test -i test_lint -p 9874 -a "--test-enable --test-tags /test_lint --stop-after-init --log-level=test --max-cron-threads=0"

  cd $original_dir
end
