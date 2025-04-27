docker build --platform linux/amd64 -t nginx:1.25_logrotate_x86 . 
docker save -o nginx_x86.tar nginx:1.25_logrotate_x86

docker build --platform linux/arm64 -t nginx:1.25_logrotate_arm . 
docker save -o nginx_arm.tar nginx:1.25_logrotate_arm

