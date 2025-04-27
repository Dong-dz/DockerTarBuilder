# # 指定 Node.js 版本（推荐稳定版如 14.x 或 16.x）
# FROM node:14-alpine

# # 设置工作目录（避免根目录操作）
# WORKDIR /app

# # 安装依赖前清理残留文件（可选）
# RUN rm -rf node_modules package-lock.json  &&  npm install redis-dump -g 



# 基于官方的 Node.js 镜像创建
FROM node:16

# 设置工作目录
WORKDIR /app

# 安装 redis-dump 和 redis-load
RUN npm install -g redis-dump redis-load

# 提供默认命令，打印 redis-dump 和 redis-load 的版本
CMD ["sh", "-c", "echo 'redis-dump version:' && redis-dump --version && echo 'redis-load version:' && redis-load --version"]
