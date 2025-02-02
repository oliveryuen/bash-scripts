#!/bin/bash

USAGE="Usage: $0 [dev|qa|prod]"
if [ $# -ne 1 ]; then
    echo $USAGE
    exit 1
else
    ENV=$1
fi

echo "\
####################################################
# $0
####################################################"
echo "What is your name?"
read NAME
clear
echo "Hello $NAME, $0 will run now with for $ENV environment"

DARKGRAY='\033[1;30m'
RED='\033[0;31m'
LIGHTRED='\033[1;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
LIGHTPURPLE='\033[1;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
DEFAULT='\033[0m'

COLORS=($DARKGRAY $RED $LIGHTRED $GREEN $YELLOW $BLUE $PURPLE $LIGHTPURPLE $CYAN $WHITE )

for c in "${COLORS[@]}"; do
    printf "\r $c Welcome to Jeopardy! $DEFAULT "
    sleep .5 
done
printf "\n"
echo "...just kidding, maybe next time"

arr=('-' '\' '|' '/')
count=0
initialize=true
while $initialize; do
    ((count=count+1))
	for c in "${arr[@]}"; do
		printf "\r %c please wait for initialization..." $c
		sleep .5
        if [ $count -eq 5 ]; then
            initialize=false
        fi
	done
done
printf "\n"
