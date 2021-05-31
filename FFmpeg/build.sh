#!/bin/zsh

make clean
rm -rf $(pwd)/macox
mkdir $(pwd)/macox

function  buuild_macosx() {
  #statements

  ./configure \
  --prefix=$(pwd)/macox \
  --disable-static \
  --enable-shared \
  --disable-x86asm \
  --target-os=darwin

  make clean
  make install
}

buuild_macosx
