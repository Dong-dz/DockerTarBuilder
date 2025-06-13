git clone https://gitee.com/ascend/ascend-npu-exporter.git
ls 

cd ascend-npu-exporter/build/
ls 

chmod +x build.sh
bash build.sh

docker build -t ascend:master .
docker save -o ascend.tar ascend:master
mv  ascend.tar  .. 
ls 
ls ..
