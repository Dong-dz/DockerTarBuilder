docker build -t "${image}" . 
docker save -o "${image}".tar "${image}"
tar -czf x86-64-"${image}".tar.gz "${image}".tar
