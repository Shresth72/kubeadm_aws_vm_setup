#!/bin/bash
#
# --- Master Node & Worker Node Connection Setup --- #

# To view all the pods on the master node on the kube-system namespace
kubectl get pods -n kube-system

# To verify the readiness of the api server on the master node
kubectl get --raw='/readyz?verbose'

# To join the worker nodes to the master node
# use the token command to generate the join command
kubeadm token create --print-join-command

# execute the join commands on the Worker Nodes

#
# To view all the nodes in the cluster
kubectl get nodes

# rename the labels of the worker nodes
kubectl label node <worker-1-node-name> node-role.kubernetes.io/worker=worker
kubectl label node <worker-2-node-name> node-role.kubernetes.io/worker=worker

# To access the kubeadm cluster from local machine instead of the master node
# copy the kubeconfig file from the master node
cat /etc/kubernetes/admin.conf

# paste the content of the file to the local machine here
vim ~/.kube/config











# --- Metric Server Deployment --- #

# To get CPU and memory metrics of Pods, we need 
# metric server component in the cluster
# It collects and stores resource usage data from each node in the cluster
# and makes it available to the Kubernetes API server

# Verify metrics api availability
kubectl top nodes

# Deploy the metric server
kubectl apply -f metrics-server.yaml

# Verify the metric server deployment & metric api availability
kubectl top nodes
kubectl top pods -n kube-system
