kubeadm init --apiserver-advertise-address $(hostname -i) --pod-network-cidr 10.5.0.0/16

kubectl apply -f https://raw.githubusercontent.com/cloudnativelabs/kube-router/master/daemonset/kubeadm-kuberouter.yaml

useradd admin

mkdir -p /home/admin/.kube

cp -i /etc/kubernetes/admin.conf /home/admin/.kube/config

chown admin:admin /home/admin/.kube/config

