#! /usr/bin/env bash

set -e

plugins=(tpope/vim-fugitive vim-scripts/renamer.vim chrisbra/CheckAttach)

mkdir -p ~/.vim/plugins
cd ~/.vim/plugins
rtp=""

for plugin in "${plugins[@]}"; do
	echo "$plugin:"
	base=$(basename "$plugin")

	if [[ ! -d "$base" ]]; then
		git clone "https://github.com/$plugin" 2>&1 | sed "s/^/  /g"
	else
		git -C "$base" pull 2>&1 | sed "s/^/  /g"
	fi

	if [[ -d "$base/doc" ]]; then
		vim -u NONE -c "helptags $base/doc" -c "quit"
	fi

	rtp="$rtp rtp^=~/.vim/plugins/$base"
done

echo "set$rtp" > rtp.vim
