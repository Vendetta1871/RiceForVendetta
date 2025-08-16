#!/bin/bash

method=$(fcitx5-remote -n)

# remove prefix keyboard-
method=${method#keyboard-}

# replace pinyin with cn
if [[ "$method" == "pinyin" ]]; then
	method="cn"
fi

if [[ "$method" == "" ]]; then
	method="N/A"
fi

echo "$method"
