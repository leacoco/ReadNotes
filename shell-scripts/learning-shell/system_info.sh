#!/bin/bash

### constants

TITLE="System Information for $HOSTNAME"
DATE=$(date +"%x %r %Z")
TIMESTAMP="Updated on $DATE by User=$USER"

### Functions

function show_system_info () {
  echo "Showing system info ..."
  cat /proc/cpuinfo
}

function show_uptime () {
  echo "Showing Uptime ..."
  uptime
}

function show_disk_space () {
  echo "Showing Disk space"
  df -h
}

function show_home_space () {
  echo "Showing Home space "
}

function main () {
  echo "$TITLE"
  echo "Information on $DATE"
  show_system_info
  show_uptime
  show_disk_space
}

main "$@"
