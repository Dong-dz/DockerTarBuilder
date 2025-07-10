git clone --branch v4.4.0 https://github.com/kekingcn/kkFileView.git
ls 

ls 

cd kkFileView/docker/kkfileview-base/
docker build --platform linux/amd64 -t 505403623/public/kkfileview-base:4.4.0 .

cd ../..

mvn -B package -Dmaven.test.skip=true --file pom.xml
tar -czvf  kkFileViewjar.tar server/target/kkFileView-*.tar.gz 

docker save -o kkfileview-base.tar 505403623/public/kkfileview-base:4.4.0
docker push 505403623/public/kkfileview-base:4.4.0

mv  kkfileview-base.tar  .. 
mv  kkFileViewjar.tar ..

ls 
ls ..
