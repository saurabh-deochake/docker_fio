#Download base image from Centos
FROM centos:latest
MAINTAINER Saurabh Deochake<saurabh.deochake@gmail.com>

RUN yum -y install libaio librados2-devel qemu-kvm qemu-kvm-tools qemu-img
# install prerequisites
ADD fio-2.2.10-1.el7.x86_64.rpm /
RUN rpm -ivh /fio-2.2.10-1.el7.x86_64.rpm

#Add read files
ADD jobfile.fio /jobfile.fio

VOLUME /dev/nvme0n1
