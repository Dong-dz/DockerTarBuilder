# echo "下载源码包"
# git clone  -b release-v3.14.6  https://github.com/TencentBlueKing/bk-cmdb configcenter  --single-branch

# echo "安装依赖"
# pwd 
# ls 
# go env -w GO111MODULE="auto"
# cd configcenter
# go mod tidy

# # curl -L -o Tongsuo-8.3.2.tar.gz https://github.com/Tongsuo-Project/Tongsuo/archive/refs/tags/8.3.2.tar.gz
# # ls
# # tar -xvf Tongsuo-8.3.2.tar.gz
# # cd Tongsuo-8.3.2
# # mkdir -p /tmp/tongsuo
# # ./config --prefix=/tmp/tongsuo && make -j && make install

# # TONGSUO_PATH=/tmp/tongsuo

# curl -fsSL https://deb.nodesource.com/setup_22.x | sudo bash -
# sudo apt-get install -y nodejs

# apt-get install g++ build-essential

# echo "编译"
# pwd
# ls
# cd ../src
# make ui
# make package

# echo "构建镜像"
# pwd 
# ls 
# cd bin/pub/
# tar -xvf  cmdb.tar.gz
# # cd cmdb
# # ./image.sh

docker build -t cmdb_ui:20250807 . 
