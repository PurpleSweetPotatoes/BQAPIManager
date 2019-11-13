#!/bin/bash
# -*- coding: utf-8 -*-
# @Date    : 2019-11-13 09:40:11
# @Author  : MrBai
# @Email   : 568604944@qq.com

echo '*** 开始操作 ***'
git add .
if [[ $1 ]]; then
    git cm "$1"
else 
    git cm "无描述提交"
fi

git tag -d 0.0.1
git push origin :refs/tags/0.0.1
git push 
git push --tags