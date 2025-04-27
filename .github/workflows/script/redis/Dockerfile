# # 指定 Node.js 版本（推荐稳定版如 14.x 或 16.x）
# FROM node:14-alpine

# # 设置工作目录（避免根目录操作）
# WORKDIR /app

# # 安装依赖前清理残留文件（可选）
# RUN rm -rf node_modules package-lock.json  &&  npm install redis-dump -g 


# 基础镜像（推荐使用官方Redis镜像）
FROM redis:5.0.14

# 安装依赖项
RUN apk update && apk add --no-cache \
    ruby-dev \
    make \
    gcc \
    procps \
    musl-dev

# 配置RubyGems镜像源（可选，国内建议添加）
# RUN gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/

# 安装redis-dump工具
RUN gem install redis-dump -V

# 清理缓存
RUN rm -rf /var/cache/apk/*
