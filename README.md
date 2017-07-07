# Using Docker for I/O Benchmarking using Flexible I/O

This repository contains a Dockerfile and sample FIO jobfile which is helpful in bechmarking the I/O performance of Docker. I am using a solid state drive (SSD) as an underlying disk.

Please follow these steps:

1) ```docker pull saurabhd04/docker_fio```   
2) Run docker container ```docker run --cap-add=SYS_ADMIN -it --device /dev/sda:/dev/xvda:rw saurabhd04/docker_fio```
3) Inside the container run fio ```fio jobfile.fio```
