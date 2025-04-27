# # 指定 Node.js 版本（推荐稳定版如 14.x 或 16.x）
# FROM node:14-alpine

# # 设置工作目录（避免根目录操作）
# WORKDIR /app

# # 安装依赖前清理残留文件（可选）
# RUN rm -rf node_modules package-lock.json  &&  npm install redis-dump -g 

from ruby:3.5.0-preview1-alpine3.20
run  gem sources --remove https://rubygems.org/  && gem sources -a https://ruby.taobao.org/  && gem install redis-dump redis-load -V  
