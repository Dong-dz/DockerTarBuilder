git clone https://gitee.com/ascend/ascend-npu-exporter.git
ls 

cd ascend-npu-exporter/build/
ls 

echo "构建exporter"
chmod +x build.sh
bash build.sh

echo "构建镜像"
cd ../output
docker build -t ascend:master .
docker save -o ascend.tar ascend:master
mv  ascend.tar  .. 

ls 
ls ..
