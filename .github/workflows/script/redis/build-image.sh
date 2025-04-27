docker build  --platform linux/arm64 --tag redis_dump:20250427_arm .
# docker build  --platform linux/amd64 --tag redis_dump:20250427_x86 .

docker save -o redisdump_arm.tar redis_dump:20250427_arm
# docker save -o redisdump_x86.tar redis_dump:20250427_x86
