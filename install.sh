#!/usr/bin/env bash

ROOT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

JESSE_FOLDER=~/.jesse-profile

if [ -e $JESSE_FOLDER ]; then
  echo "removing existing install: $JESSE_FOLDER"
  rm -rf $JESSE_FOLDER	
fi

echo "making $JESSE_FOLDER"
mkdir -p $JESSE_FOLDER

echo "copying $ROOT_DIR/. $JESSE_FOLDER"
cp -R $ROOT_DIR/. $JESSE_FOLDER
echo "cleaning $JESSE_FOLDER/{.git,install.sh,README.md}"
rm -rf $JESSE_FOLDER/{.git,install.sh,README.md}
