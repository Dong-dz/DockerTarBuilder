#sudo cat >> /etc/apt/sources.list.d/ros-latest.list << EOF
#deb http://mirrors.ustc.edu.cn/ros/ubuntu/ focal main
#EOF
#sudo apt-get update 

git clone https://github.com/getasterisk/deepclaude.git
cd deepclaude
docker build -t deepclaude:20250205 . 
docker save -o deepclaude-amd64.tar deepclaude:20250205
tar -czf x86-64-image.tar.gz deepclaude-amd64.tar
