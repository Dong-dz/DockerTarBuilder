git clone --branch v4.4.0 https://github.com/kekingcn/kkFileView.git
ls 
cd kkFileView
ls 
mvn -B package -Dmaven.test.skip=true --file pom.xml
docker build -t kkFileView:v4.4.0 .
docker save -o kkFileView.tar kkFileView:v4.4.0
mv  kkFileView.tar  .. 
ls 
ls ..
