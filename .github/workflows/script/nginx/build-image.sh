docker build -t nginx:1.25_logrotate . 
# docker save -o nginx.tar nginx:1.25_logrotate 

#docker buildx build -f ./Dockerfile --platform linux/amd64,linux/arm64 -t nginx:1.25_logrotate .
docker save -o nginx.tar nginx:1.25_logrotate 
