
docker rm webassembly

docker build -t "webassembly:v1" .

docker run --name webassembly -it webassembly:v1

docker exec -d webassembly source ../emsdk-portable/emsdk_env.sh


