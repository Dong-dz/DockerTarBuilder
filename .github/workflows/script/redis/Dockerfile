# # 指定 Node.js 版本（推荐稳定版如 14.x 或 16.x）
# FROM node:14-alpine

# # 设置工作目录（避免根目录操作）
# WORKDIR /app

# # 安装依赖前清理残留文件（可选）
# RUN rm -rf node_modules package-lock.json  &&  npm install redis-dump -g 

FROM ruby:3.0.7-alpine

# 安装必要的依赖项
RUN apk update && \
    apk add  \
    git \
    build-essential \
    python3-pip \
    libffi-dev

# 安装 redis gem 和 redis-dump
RUN gem install redis && \
    gem install redis-dump
    

