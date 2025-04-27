# # 指定 Node.js 版本（推荐稳定版如 14.x 或 16.x）
# FROM node:14-alpine

# # 设置工作目录（避免根目录操作）
# WORKDIR /app

# # 安装依赖前清理残留文件（可选）
# RUN rm -rf node_modules package-lock.json  &&  npm install redis-dump -g 


# 使用官方 Redis 镜像作为基础镜像
FROM redis:latest

# 安装依赖工具
RUN apt-get update && \
    apt-get install -y \
    git \
    build-essential \
    python3 \
    python3-venv \
    python3-pip && \
    rm -rf /var/lib/apt/lists/*

# 创建并激活虚拟环境
RUN python3 -m venv /opt/venv && \
    /opt/venv/bin/pip install --upgrade pip && \
    /opt/venv/bin/pip install redis-dump redis-load

# 设置环境变量以激活虚拟环境
ENV PATH="/opt/venv/bin:$PATH"

# 设置默认的工作目录
WORKDIR /data

# 默认启动命令
CMD ["redis-server"]

