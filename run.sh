#!/bin/bash

run_app() {
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

  echo "nvm version"
  nvm --version
  echo "node version"
  node --version
  echo "npm version"
  npm --version
  echo "Starting wifi service  ..."
  npm start
}

cd /wifi-ap/vfarm-wifi-setup
run_app > /wifi-ap/vfarm-wifi-setup-app.log 2>&1


