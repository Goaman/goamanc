#!/usr/bin/fish

##########################################
## odoo aliasse
##########################################

set main_odoo_dir "$HOME/main_odoo"
set odoo_src_dir "$HOME/src"
set odoo_10_dir "$odoo_src_dir/10.0"

abbr god "cd $main_odoo_dir/odoo"
abbr gode "cd $main_odoo_dir/enterprise"
abbr godt "cd $main_odoo_dir/design-themes"
abbr godi "cd ~/projects/internal"

abbr esaod "vim $HOME/goamanc/fishc/aliases/odoo; source $HOME/goamanc/fishc/aliases/odoo"

function gfaod
  set current_path (pwd)
  cd $main_odoo_dir/odoo
  git fetch --all
  cd $main_odoo_dir/enterprise
  git fetch --all
  cd $main_odoo_dir/design-themes
  git fetch --all
  cd $current_path
end

function gfaod
  set current_path (pwd)
  cd $main_odoo_dir/odoo
  git fetch --all
  git merge odoo/master

  cd $main_odoo_dir/enterprise
  git fetch --all
  git merge enterprise/master

  cd $main_odoo_dir/design-themes
  git fetch --all
  git merge origin/master
  cd $current_path
end

#listport odoo
# lpod() {
#   echo "list port 8069:"
#   listport 8069
#   echo
#   echo "list port 8569:"
#   listport 8569
# }

abbr oes "python3 $HOME/projects/support-tools/oe-support.py"

# oes-grepmodules () {
#   #grep "odoo.modules.graph" | grep -oE "module\s([^:]*)" | grep -oE " .*" | trim
#   grep "odoo.modules.graph"
#   # transfrom for sql command
#   query=$(echo "('"$(cat modules | grep -oE "module\s([^:]*)" | grep -oE " .*" | trim | tr '\n' ',' | sed "s/,/','/g"| sed "s/','$//g")"')")
#   echo $query
# }
# # oes user
# oesu () {
#   psql -d oe_support_$1 -c "SELECT u.id,login,p.name,share FROM res_users u JOIN res_partner p ON u.partner_id=p.id WHERE u.active=true ORDER BY share ASC,u.id ASC LIMIT 15;"
# }

# # oes user copy
# oesuc () {
#   echo $(psql -d oe_support_$1 -c "SELECT login FROM res_users u JOIN res_partner p ON u.partner_id=p.id WHERE u.active=true ORDER BY share ASC,u.id ASC LIMIT 1;" | head -n 3 | tail -n 1) | pbcopy
# }
# # oes copy login
# oesl () {
#   #oes info $1 2>/dev/null | grep "Root login:" | cut -d':' -f2 | trim | xclip -selection clipboard
#   echo copying $1

#   #mail=$($HOME/projects/support-tools/oe-support.py info $1 2> /dev/null | grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn} "Root login:" | cut -d':' -f2 | trim)
#   mail=$(psql -d oe_support_$1 -c "select login from res_users where active='t' order by id limit 1;" | head -n3 | tail -n1 | trim) 
#   echo mail: $mail
#   echo $mail | xclip -selection clipboard
# }
# #oesupport users
# oesu() {
#   psql -d oe_support_$1 -c " select id, login, active from res_users where active='t' order by id, active;"
# }
# #oe support fetch with copying the root
# oesf() {
#   oesl $1
#   oes fetch $1
# }
# #oe support start with copying the root
# oest() {
#   oesl $1
#   # oes start --checkout $*
#   oes start $*
# }
# oess() {
#   oesl $1
#   oes shell --checkout $*
# }
# oesf() {oes fetch --no-start $*}
# oesi() {oes info $*}


# od_new_uuid() {
#   python -c "import uuid;print(str(uuid.uuid4()))"
# }
# oes-disable () {
#   query="UPDATE ir_cron SET active='f'; -- Disable the crons
#   UPDATE ir_mail_server SET active=false; -- Disable email servers
#   UPDATE ir_config_parameter SET value = '2042-01-01 00:00:00' WHERE key = 'database.expiration_date'; -- Set the enterprise expiration date some time far away
#   UPDATE ir_config_parameter SET value = '"+od_new_uuid+"' WHERE key = 'database.uuid'; -- Change the serial number of the database so you do not send to www.odoo.com information on the behalf of the production database
#   INSERT INTO ir_mail_server(active,name,smtp_host,smtp_port,smtp_encryption) VALUES (true,'mailcatcher','localhost',1025,false);  -- Add a mailcatcher server email to catch all outgoing emails
#   UPDATE res_users SET password=login; -- Replace users password by their login
#   DELETE FROM ir_attachment WHERE name like '%assets_%'; -- Delete assets so they are re-generated when you access the database the first time"

#   psql oe_support_$1 -c $query | cat
# }

# oes-clean-database() {
#   python $HOME/projects/support-tools/clean_database.py dbname=oe_support_$1
# }
# #odoo git exec
# odgexec() {
#   current_path=$(pwd)
#   cd $main_odoo_dir/odoo
#   git $1 $2
#   cd $main_odoo_dir/enterprise
#   git $1 $2
#   cd $main_odoo_dir/design-themes
#   git $1 $2
#   cd $current_path
# }
# odtree(){
#   version=$1
#   current_path=$(pwd)

#   cd $main_odoo_dir/odoo
#   git worktree add ../../src/$version/odoo $version

#   cd $main_odoo_dir/enterprise
#   git worktree add ../../src/$version/enterprise $version

#   cd $main_odoo_dir/design-themes
#   git worktree add ../../src/$version/design-themes $version


#   cd $current_path
# }
# odgc() {
#   odgexec checkout $1
# }
# odgs() {
#   odgexec stash $1
# }
# odgp() {
#   odgexec pull $1
# }
# odgf() {
#   odgexec fetch $1
# }

# # odoo fetch/merge
# odfm () {
#   version=$1
#   current_path=$(pwd)

#   cd $odoo_src_dir/$version/odoo
#   git stash
#   git fetch odoo $version
#   git merge odoo/$version
#   cd $odoo_src_dir/$version/enterprise
#   git stash
#   git fetch enterprise $version
#   git merge enterprise/$version
#   cd $odoo_src_dir/$version/design-themes
#   git stash
#   git fetch origin $version
#   git merge origin/$version

#   cd $current_path
# }

# odo() {
#   god
#   $main_odoo_dir/odoo/odoo-bin
# }

# dropOdoo10 () {
# for i in 1 2 3 4 5 6 7 8 9; do
#   dbname=fresh10-$i
#   echo dropdb $dbname
#   dropdb $dbname
# done
# }

# start10 () {
#   dbname=fresh10-$1
#   # echo python $odoo_10_dir/odoo/odoo-bin -d $dbname --xmlrpc-port=817$1 --addons-path=$odoo_10_dir/enterprise,$odoo_10_dir/odoo/addons --without-demo=True
#   branch=10.0-force-unlink-database-nby
#   #branch=10.0
#   odoo_path=$HOME/src/$branch
#   echo python $odoo_path/odoo/odoo-bin --db-filter=^$dbname$ --xmlrpc-port=817$1 --addons-path=$odoo_path/enterprise,$odoo_path/odoo/addons --without-demo=True
#   python $odoo_path/odoo/odoo-bin --db-filter=^$dbname$ --xmlrpc-port=817$1 --addons-path=$odoo_path/enterprise,$odoo_path/odoo/addons --without-demo=True
# }

# # odoo vsc workspace
# odwp () {
#   workspace=$1
#   odoo-default-workspace.js $workspace | jq '' > $HOME/projects/vsc-workspace/$workspace.code-workspace
# }
  


# # ?clean?

# start-odoo-10() {
#   for i in 1 2 3 4 5 6 7 8 9; do
#     dbname=fresh10-$i
#     echo $dbname:start
#     echo $odoo_10_dir/odoo/odoo-bin -d $dbname --xmlrpc-port=817$i --addons-path=$odoo_10_dir/enterprise,$odoo_10_dir/odoo/addons --without-demo=True  &
#     python $odoo_10_dir/odoo/odoo-bin -d $dbname --xmlrpc-port=817$i --addons-path=$odoo_10_dir/enterprise,$odoo_10_dir/odoo/addons --without-demo=True &
#     echo $dbname:finish
#   done
# }
# install-odoo-10() {
#   for i in 1 2 3 4 5 6 7 8 9; do
#     dbname=fresh10-$i
#     echo $dbname:start
#     echo $odoo_10_dir/odoo/odoo-bin -d $dbname --xmlrpc-port=817$i --addons-path=$odoo_10_dir/enterprise,$odoo_10_dir/odoo/addons --without-demo=True -i project 2>/dev/null &
#     python $odoo_10_dir/odoo/odoo-bin -d $dbname --xmlrpc-port=817$i --addons-path=$odoo_10_dir/enterprise,$odoo_10_dir/odoo/addons --without-demo=True -i project 2>/dev/null &
#     echo $dbname:finish
#   done
# }
# unlink-database-odoo-10() {
#   for i in 1 2 3 4 5 6 7 8 9; do
#     dbname=fresh10-$i
#     psql -d $dbname -c "delete from ir_config_parameter where key='database.expiration_date' or key='database.expiration_reason' or key='database.enterprise_code';"
#   done
# }

# kill_odoo_bin() {
#   echo Odoo bin:
#   echo $(psp odoo-bin | grep fresh10)
#   psp odoo-bin | grep fresh10 | onespace | cuts -f2 | xargs kill -9
# }

# alias kob="kill_odoo_bin"

# oes-reset-sub() {
#   database=$1
#   echo psql -d $database -c "update ir_config_parameter set value='2020-01-19 09:07:07' where key='database.expiration_date';"
#   psql -d $database -c "update ir_config_parameter set value='2020-01-19 09:07:07' where key='database.expiration_date';"
#   echo psql -d $database -c "update  ir_cron set active='f' where cron_name='Publisher: Update Notification';"
#   psql -d $database -c "update  ir_cron set active='f' where cron_name='Publisher: Update Notification';"

# }

# #reset password
# oesrp() {
#   echo psql -d oe_support_$1 -c 'update res_users set password=login;'
#   psql -d oe_support_$1 -c 'update res_users set password=login;'
#   echo psql -d oe_support_$1 -c "update res_users set active='t' where id=1;"
#   psql -d oe_support_$1 -c "update res_users set active='t' where id=1;"
#   echo psql -d oe_support_$1 -c "update res_users set oauth_uid='' , password_crypt='';"
#   psql -d oe_support_$1 -c "update res_users set oauth_uid='' , password_crypt='';"
# }
# reset-password-openerp() {
#   psql -d openerp -c "update res_users values set password=login; update res_users set active='t' where id=1"
#   echo "you can connect now with __system__ user"
# }

# # launch-odoo() {
# #   which launch-odoo
# #   python3 \
# #     -m ptvsd --host localhost --port 5678\
# #     $HOME/src2/odoo/odoo-bin -d openerp --xmlrpc-port=8169 \
# #     --addons-path=$HOME/projects/internal/test,$HOME/projects/internal/default,$HOME/projects/internal/private,$HOME/src2/enterprise,$HOME/src2/design-themes,$HOME/src2/odoo/addons
# #       --without-demo=all\
# #       --load=saas_worker,web 
# # }
# #
# # oderp () {
# #   which oderp
# #   shell=''
# #   port='--xmlrpc-port=8169'
# #   # if shell
# #   if (( ${+1} ));then
# #     shell='shell'
# #     port=''
# #   fi
# #   python3 \
# #     -m ptvsd --host localhost --port 5678\
# #     $HOME/src2/odoo/odoo-bin\
# #     $shell\
# #     $port\
# #     -d openerp\
# #     --addons-path=$HOME/projects/internal/test,$HOME/projects/internal/default,$HOME/projects/internal/private,$HOME/src2/enterprise,$HOME/src2/design-themes,$HOME/src2/odoo/addons
# #     --without-demo=all\
# #     --load=saas_worker,web\
# #     -u openerp_enterprise
# # }

# odw () {
#   version=$1
#   git 
# }
# # oesclean
# oesc() {
#   python2 $HOME/projects/support-tools/clean_database.py dbname=oe_support_$1 --verbose
# }

function new-odoo-worktree
  set version $argv[1]
  mkdirp ~/src/$version/{odoo,enterprise,design-themes}
  cd ~/main_odoo/odoo; git worktree add ~/src/$version/odoo $version
  cd ~/main_odoo/enterprise; git worktree add ~/src/$version/enterprise $version
  cd ~/main_odoo/design-themes; git worktree add ~/src/$version/design-themes $version
  odoo-default-workspace.js $version > $HOME/projects/vsc-workspace/odoo-$version.code-workspace
end

set compta_db comptapocalypse
set compta_branch master-acc-pocalypse-nby
function compta
  set database $compta_db
  set branch $compta_branch
  python3 $HOME/src/master-acc-pocalypse-las/odoo/odoo-bin -d $database --xmlrpc-port=8169 \
    --addons-path=$HOME/src/$branch/enterprise,$HOME/src/$branch/odoo/addons,$HOME/main_odoo/design-themes $argv
end
function compta-test
  set database$compta_db
  set branch$compta_branch
  python3 $HOME/src/master-acc-pocalypse-las/odoo/odoo-bin -d $database --xmlrpc-port=8869 \
    --addons-path=$HOME/src/$branch/enterprise,$HOME/src/$branch/odoo/addons,$HOME/main_odoo/design-themes\
    --test-enable $argv
end

# pocalypse push
function pocpush
  set dir (pwd)
  cd $HOME/src/master-acc-pocalypse-nby/odoo
  git push -f odoo-dev master-acc-pocalypse-nby
  cd $HOME/src/master-acc-pocalypse-nby/enterprise
  git push -f enterprise-dev master-acc-pocalypse-nby
  cd $dir
end

#pull community
function pocpull
  cd ~/src/master-acc-pocalypse-nby/odoo
  git pull --rebase odoo-dev master-acc-pocalypse-las
end
#pull enterprise
function pocpulle
  cd ~/src/master-acc-pocalypse-nby/enterprise
  git pull --rebase enterprise-dev master-acc-pocalypse-las
end

abbr eod vim $HOME/projects/self/programming/odoo/odoo-click/odoo-click.py
function odo
  python3 $HOME/projects/self/programming/odoo/odoo-click/odoo-click.py $argv
end

function delete_invoices
  psql -d $argv[1] -c 'delete from account_partial_reconcile;'
  psql -d $argv[1] -c 'delete from account_invoice;'
  psql -d $argv[1] -c 'delete from account_invoice_line;'
  psql -d $argv[1] -c 'delete from account_move;'
  psql -d $argv[1] -c 'delete from account_move_line;'
end
