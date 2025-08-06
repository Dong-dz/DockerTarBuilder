go env -w GO111MODULE="auto"

git clone https://github.com/TencentBlueKing/bk-cmdb configcenter

cd configcenter
go mod tidy

cd configcenter/src
make server
make package

cd configcenter/src/bin/pub/
tar -xvf  cmdb.tar.gz
cd cmdb
./image.sh

# ls  sfswefrsfs 
# bash build_image.sh
# docker save -o milvus-cdc.tar docker.io/library/milvus-cdc:main-a54f09b
# mv  milvus-cdc    .tar  .. 
# ls 
# ls ..
