# # 指定 Node.js 版本（推荐稳定版如 14.x 或 16.x）
# FROM node:14-alpine

# # 设置工作目录（避免根目录操作）
# WORKDIR /app

# # 安装依赖前清理残留文件（可选）
# RUN rm -rf node_modules package-lock.json  &&  npm install redis-dump -g 


# 构建阶段
FROM ruby:3.1-alpine3.20 AS builder

RUN apk add --no-cache ruby-dev make gcc musl-dev \
 && gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/ \
 && gem install --no-document \
    redis -v 4.4.0 \
    yajl-ruby -v 1.4.1 \
    redis-dump -v 0.6.1

# 运行阶段
FROM ruby:3.1-alpine3.20

RUN apk add --no-cache ruby-uri ruby-json  # 关键修复
COPY --from=builder /usr/local/bundle/ /usr/local/bundle/

CMD ["redis-dump", "--version"]
