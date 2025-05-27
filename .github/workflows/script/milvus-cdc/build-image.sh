git clone https://github.com/zilliztech/milvus-cdc.git
ls 
cd milvus-cdc
ls 
bash build_image.sh
docker save -o milvus-cdc.tar docker.io/library/milvus-cdc:main-a54f09b
