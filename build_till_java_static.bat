cd builder
docker build . -t mumble_builder_static -f Dockerfile_static
cd ../run
docker build . -t mumble_selfbuild_static -f Dockerfile_selfbuild_static
docker build . -t mumble_selfbuild_static_with_java -f Dockerfile_selfbuild_static_with_java
cd ..