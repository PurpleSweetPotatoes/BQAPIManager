#!/bin/bash
# -*- coding: utf-8 -*-
# @Date    : 2019-11-13 09:40:11
# @Author  : MrBai
# @Email   : 568604944@qq.com

echo '*** 开始操作 ***'

if [[ ! -n $1 ]]; then
    echo '*** 需要一个版本号 ***'
else 
    git add .
    git cm "更新tag $1"
    git tag -d "$1"
    git tag "$1"
    git push origin :refs/tags/"$1"
    git push 
    git push --tag
fi

