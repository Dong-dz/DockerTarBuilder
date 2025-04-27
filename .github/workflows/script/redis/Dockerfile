# # 指定 Node.js 版本（推荐稳定版如 14.x 或 16.x）
# FROM node:14-alpine

# # 设置工作目录（避免根目录操作）
# WORKDIR /app

# # 安装依赖前清理残留文件（可选）
# RUN rm -rf node_modules package-lock.json  &&  npm install redis-dump -g 

# FROM ruby:2.7-alpine
# # 安装必要的依赖包并清理缓存
# RUN apk update && \
#     apk add --no-cache \
#     build-base  \
#     libffi-dev  && \
#     rm -rf /var/cache/apk/*
# # 安装 redis-dump 和 redis-load
# RUN gem install redis-dump redis-load

 
# # 使用官方Ruby镜像作为基础镜像
# FROM ruby:2.7

# # 安装必要的依赖包
# RUN apt-get update && \
#     apt-get install -y build-essential libpq-dev  && rm -rf /var/cache/apt/*

# # 安装redis-dump和redis-load
# RUN gem install redis-dump



FROM golang:1.21-alpine AS builder
WORKDIR /app
COPY . .
RUN go mod download
RUN go build -o redis-shake ./cmd/redis-shake

FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/redis-shake .
COPY shake_sync_env.toml .
COPY shake_scan_env.toml .
COPY entrypoint.sh .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/bin/sh", "entrypoint.sh"]
