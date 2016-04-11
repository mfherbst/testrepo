#!/bin/bash

# Parse the arguments. We should get one gcc version and one clang version.
while [ "$1" ]; do
	case "$1" in
		gcc-*)
			GCC="$1"
			GCXX="g++${1:3}"
			;;
		clang-*)
			CLANGCC="$1"
			CLANGCXX="clang++${1:5}"
			;;
		*)
			echo "Unknown arg: $1" >&2
			return 1
	esac
	shift
done

# Make a dir where to put the binary links:
mkdir "${HOME}/bin"

# gcc
ln -s "/usr/bin/$GCC" "${HOME}/bin/gcc"
ln -s "/usr/bin/$GCXX" "${HOME}/bin/g++"

# clang
ln -s "/usr/bin/$CLANGCC" "${HOME}/bin/clang"
ln -s "/usr/bin/$CLANGCXX" "${HOME}/bin/clang++"

export PATH="${HOME}/bin:${PATH}"
return 0
