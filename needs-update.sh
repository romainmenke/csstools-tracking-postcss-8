#!/usr/bin/env bash
set -e

cd ./repos
current_dir=$(pwd)

for x in $(ls); do
	cd $x;

	postcss_dependency=$(cat package.json | jq -r '.dependencies.postcss')
	if [ "$postcss_dependency" != "null" ]; then
		echo "${x}\n  - has postcss dependency : ${postcss_dependency}\n"
	fi

	cd $current_dir;
done
