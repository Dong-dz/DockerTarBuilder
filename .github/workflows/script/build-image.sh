sudo cat >> /etc/apt/sources.list.d/ros-latest.list << EOF
deb http://mirrors.ustc.edu.cn/ros/ubuntu/ focal main
EOF
sudo apt-get update 
docker build -t ros:noetic-dong . 
docker save -o ros.tar ros:noetic-dong
tar -czf x86-64-image.tar.gz ros.tar
