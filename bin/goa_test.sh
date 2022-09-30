#!/bin/bash

# print and eval
peval () {
  echo "$" $1
  eval $1
}

server_ip="root@167.86.75.203"
goapower_path="/Users/goaman/projects/self/programming/goa/goa-power"
build_and_start_script="$goapower_path/packages-goaman/goapower-deployment/goapower_deploy.sh"

peval "rsync -vrazhP \
  --exclude node_modules/\
  --exclude .git/\
  --exclude prisma.db\
  --exclude .ssl/\
  --exclude dist/\
  --exclude .cache/\
  --exclude tmp/\
  --exclude data/\
  --delete $goapower_path root@167.86.75.203:/root/"
peval "ssh -t $server_ip 'bash -s'< $build_and_start_script"