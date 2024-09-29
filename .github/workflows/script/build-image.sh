docker build -t ros:noetic-dong . 
docker save -o ros.tar ros:noetic-dong
tar -czf x86-64-image.tar.gz ros.tar
