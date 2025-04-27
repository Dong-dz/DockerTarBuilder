# from nginx:1.25
# # 安装cron和logrotate
# RUN apt-get update && \
#     apt-get install -y cron vim procps logrotate && \
#     apt-get clean && \
#     rm -rf /var/lib/apt/lists/*

# # 配置logrotate
# COPY nginx-logrotate /etc/logrotate.d/nginx

# # 设置定时任务（每天1点执行日志轮转）
# RUN echo "0 1 * * * root /usr/sbin/logrotate -f /etc/logrotate.d/nginx" > /etc/cron.d/nginx-logrotate

# # 设置cron日志和权限
# RUN chmod 0644 /etc/cron.d/nginx-logrotate && \
#     touch /var/log/cron.log

# # 启动脚本
# COPY entrypoint.sh /entrypoint.sh
# RUN chmod +x /entrypoint.sh

# ENTRYPOINT ["/entrypoint.sh"]


# 指定 Node.js 版本（推荐稳定版如 14.x 或 16.x）
FROM node:14-alpine

# 设置工作目录（避免根目录操作）
WORKDIR /app

# 安装依赖前清理残留文件（可选）
RUN rm -rf node_modules package-lock.json

# 安装 redis-dump（附加修复参数）
RUN npm install redis-dump --legacy-peer-deps --force
