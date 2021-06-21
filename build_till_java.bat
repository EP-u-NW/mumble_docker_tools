cd builder
docker build . --no-cache -t mumble_builder
cd ../run
docker build . --no-cache -t mumble_selfbuild -f Dockerfile_selfbuild
docker build . --no-cache -t mumble_selfbuild_with_java -f Dockerfile_selfbuild_with_java
cd ..