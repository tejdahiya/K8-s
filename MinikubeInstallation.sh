# Minimum Requermnet
# 2 CPU and RAM

yum update

yum install net-tools

yum install vim

yum install -y yum-utils

yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

yum install docker-ce docker-ce-cli containerd.io

systemctl start docker

useradd admin

usermod -aG docker admin

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm

rpm -Uvh minikube-latest.x86_64.rpm    

su - admin

minikube start --driver=docker

minikube config set driver docker

exit


curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl


su - admin
