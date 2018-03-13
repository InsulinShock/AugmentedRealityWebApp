

docker build -t "webassembly:v1" .\build_system

docker run --name webassembly -it webassembly:v1

docker exec -d webassembly source ../emsdk-portable/emsdk_env.sh
