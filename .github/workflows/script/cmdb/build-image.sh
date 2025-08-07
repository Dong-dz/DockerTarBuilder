echo "下载源码包"
git clone  -b release-v3.14.6  https://github.com/TencentBlueKing/bk-cmdb configcenter  --single-branch

echo "安装依赖"
pwd 
ls 
go env -w GO111MODULE="auto"
cd configcenter
go mod tidy

echo "编译"
pwd
ls
cd src
make
make package

echo "构建镜像"
pwd 
ls 
cd bin/pub/
tar -xvf  cmdb.tar.gz
cd cmdb
./image.sh
