#!/bin/sh
# Copyright (c) 2016 Tiger-Workshop Limited. All rights reserved.

set -e

if [ "$(uname -s)" == "Darwin" ]; then
  if [ "$(whoami)" == "root" ]; then
    TARGET_DIR="/Library/Google/Chrome/NativeMessagingHosts"
  else
    TARGET_DIR="$HOME/Library/Application Support/Google/Chrome/NativeMessagingHosts"
  fi
else
  if [ "$(whoami)" == "root" ]; then
    TARGET_DIR="/etc/opt/chrome/native-messaging-hosts"
  else
    TARGET_DIR="$HOME/.config/google-chrome/NativeMessagingHosts"
  fi
fi

HOST_NAME=com.tigerworkshop.chrome.hardwarebridge
rm "$TARGET_DIR/com.tigerworkshop.chrome.hardwarebridge.json"
echo "Native messaging host $HOST_NAME has been uninstalled."
