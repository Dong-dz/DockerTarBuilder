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


FROM paketobuildpacks/nodejs:latest
RUN   npm install redis-dump
