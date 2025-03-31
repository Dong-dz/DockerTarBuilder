#!/bin/sh
# 启动cron服务并重定向日志输出
cron
# 将nginx日志输出到标准输出（可选）
ln -sf /dev/stdout /etc/nginx/logs/access.log
ln -sf /dev/stderr /etc/nginx/logs/error.log
# 前台运行nginx
exec nginx -g "daemon off;"
