#!/usr/bin/env bash

ROOT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

JESSE_FOLDER=~/.jesse-profile/
JESSE_PROFILE=jesse-profile.sh
GIT_COMPLETION=git-completion.sh
GIT_PROMPT=git-prompt.sh

if [ ! -e $JESSE_FOLDER ]; then
	echo "making $JESSE_FOLDER"
	mkdir -p $JESSE_FOLDER
else
	echo "the directory $JESSE_FOLDER already exists, please remove to install"
	exit 1
fi

echo "copying $ROOT_DIR/$JESSE_PROFILE to $JESSE_FOLDER/$JESSE_PROFILE"
cp $ROOT_DIR/$JESSE_PROFILE $JESSE_FOLDER/$JESSE_PROFILE

echo "copying $ROOT_DIR/$GIT_COMPLETION to $JESSE_FOLDER/$GIT_COMPLETION"
cp $ROOT_DIR/$GIT_COMPLETION $JESSE_FOLDER/$GIT_COMPLETION

echo "copying $ROOT_DIR/$GIT_PROMPT to $JESSE_FOLDER/$GIT_PROMPT"
cp $ROOT_DIR/$GIT_PROMPT $JESSE_FOLDER/$GIT_PROMPT
