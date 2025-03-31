#!/bin/sh
# 启动cron服务并重定向日志输出
cron
# 将nginx日志输出到标准输出（可选）
ln -sf /dev/stdout /var/log/nginx/access.log
ln -sf /dev/stderr /var/log/nginx/error.log
# 前台运行nginx
exec nginx -g "daemon off;"
