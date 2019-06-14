#!/bin/bash

#Update all installed packages.
 apt-get update


#if you get an error similar to
#'[ERROR Swap]: running with swap on is not supported. Please disable swap', disable swap:
 swapoff -a

 # install some utils
 apt-get install -y apt-transport-https ca-certificates curl software-properties-common

#Install Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |  apt-key add -


add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"

 apt-get update

#Install docker service 
 apt-get install -y docker.io

#Install NFS client
 apt-get install -y nfs-common

#Enable docker service
 systemctl enable docker.service

 #Update the apt source list
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg |  apt-key add -
 add-apt-repository "deb [arch=amd64] http://apt.kubernetes.io/ kubernetes-xenial main"

 #Install K8s components
 apt-get update
 apt-get install -y kubelet kubeadm kubectl kubernetes-cni

 #Initialize the k8s cluster
 kubeadm init --pod-network-cidr=10.244.0.0/16


#Create .kube file if it does not exists
mkdir -p $HOME/.kube
cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
chown $(id -u):$(id -g) $HOME/.kube/config


#if you are using a single node which acts as both a master and a worker
#untaint the node so that pods will get scheduled:
kubectl taint nodes --all node-role.kubernetes.io/master-

#Install Flannel network
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/k8s-manifests/kube-flannel-rbac.yml

echo "Done."