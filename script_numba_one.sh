#!/bin/bash

FONTGREEN="\033[1;32m"
FONTNOCOLOR="\033[0m"

report_log() {
    STEP=$1
    MSG=$2

    echo
    echo -e "step ${STEP}: ${FONTGREEN} ${MSG} ${FONTNOCOLOR}"
    echo
    
    $3
}

report_log 1 "update packages" "apt update"
report_log 2 "upgrade packages" "apt upgrade -y"
report_log 3 "autoremove packages" "apt autoremove -y"
