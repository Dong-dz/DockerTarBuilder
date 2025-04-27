# # 指定 Node.js 版本（推荐稳定版如 14.x 或 16.x）
# FROM node:14-alpine

# # 设置工作目录（避免根目录操作）
# WORKDIR /app

# # 安装依赖前清理残留文件（可选）
# RUN rm -rf node_modules package-lock.json  &&  npm install redis-dump -g 

# 使用官方Ruby镜像作为基础镜像
FROM ruby:2.7

# 安装必要的依赖包
RUN apt-get update && \
    apt-get install -y build-essential libpq-dev

# 添加淘宝Gem源以加速安装
# RUN gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/

# 安装redis-dump和redis-load
RUN gem install redis-dump




