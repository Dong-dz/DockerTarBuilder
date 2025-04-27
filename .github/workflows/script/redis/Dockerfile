# # 指定 Node.js 版本（推荐稳定版如 14.x 或 16.x）
# FROM node:14-alpine

# # 设置工作目录（避免根目录操作）
# WORKDIR /app

# # 安装依赖前清理残留文件（可选）
# RUN rm -rf node_modules package-lock.json  &&  npm install redis-dump -g 



# 使用官方 Redis 镜像作为基础镜像
FROM redis:latest

# 安装 redis-dump 和 redis-load 工具
RUN apt-get update && \
    apt-get install -y \
    git \
    build-essential \
    python3 \
    python3-pip && \
    pip3 install redis-dump redis-load && \
    rm -rf /var/lib/apt/lists/*

# 设置默认的工作目录
WORKDIR /data

# 默认启动命令，可以根据需要修改
CMD ["redis-server"]
