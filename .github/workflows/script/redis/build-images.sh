docker build  --platform linux/arm64 --tag redis_dump:20250427 .
docker save -o redisdump.tar redis_dump:20250427
