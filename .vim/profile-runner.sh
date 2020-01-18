#!/usr/bin/env sh

vim --cmd 'profile start vimrc.profile' \
    --cmd 'profile func *' \
    --cmd 'profile file *' \
