#!/bin/bash

echo "Linking dotfiles..."

CWD=`pwd`

for file in {bash_profile,bash_prompt,bashrc,exports,aliases,vim,vimrc}; do
	echo "${file} done."
	ln -s $CWD/${file} ~/.${file}
done
