#sudo cat >> /etc/apt/sources.list.d/ros-latest.list << EOF
#deb http://mirrors.ustc.edu.cn/ros/ubuntu/ focal main
#EOF
#sudo apt-get update 
docker build -t deepclaude:20250205 . 
docker save -o deepclaude.tar deepclaude:20250205
tar -czf x86-64-image.tar.gz deepclaude.tar
