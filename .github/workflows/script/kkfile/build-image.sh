git clone --branch v4.4.0 https://github.com/kekingcn/kkFileView.git
ls 
cd kkFileView
ls 
mvn -B package -Dmaven.test.skip=true --file pom.xml
docker build --platform linux/amd64 -t kkfileview:v4.4.0 .
docker save -o kkfileview.tar kkfileview:v4.4.0
mv  kkfileview.tar  .. 
ls 
ls ..
