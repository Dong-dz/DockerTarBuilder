# # 指定 Node.js 版本（推荐稳定版如 14.x 或 16.x）
# FROM node:14-alpine

# # 设置工作目录（避免根目录操作）
# WORKDIR /app

# # 安装依赖前清理残留文件（可选）
# RUN rm -rf node_modules package-lock.json  &&  npm install redis-dump -g 

# 第一阶段：构建环境（安装编译工具）
FROM ruby:3.1-alpine3.20 AS builder

# 安装编译依赖并清理缓存（单层操作减少体积）
RUN apk add --no-cache \
    ruby-dev \
    make \
    gcc \
    musl-dev \
 && gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/ \
 && gem install redis -v 5.0.0 --no-document && gem install redis-dump -v 0.6.1 --no-document

# 第二阶段：运行环境（仅复制必要文件）
FROM ruby:3.1-alpine3.20

# 从构建阶段复制已安装的 gem
COPY --from=builder /usr/local/bundle/ /usr/local/bundle/

# 验证工具链
CMD ["redis-dump", "--version"]
