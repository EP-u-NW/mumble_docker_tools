docker run -it --rm -p 22224:22 -p 64739:64738 -v /home/eric/mumble_dev/mnt:/home/developer/mnt --cap-add=SYS_PTRACE --security-opt seccomp=unconfined  mumble_builder
