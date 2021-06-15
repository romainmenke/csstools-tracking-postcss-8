#!/usr/bin/env bash
set -e

cd ./repos
current_dir=$(pwd)

for x in $(ls); do
	cd $x;

	postcss_dependency=$(cat package.json | jq -r '.dependencies.postcss')
	if [ "$postcss_dependency" != "null" ]; then
		echo "${x}"
		echo "  - has postcss dependency : ${postcss_dependency}"
		echo "  - https://github.com/csstools/$x\n"
	fi

	cd $current_dir;
done
