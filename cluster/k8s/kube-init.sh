#!/bin/bash
#

# Pull required images
sudo kubeadm config images pull

# Variables for Kubeadm InitConfiguration
MASTER_PRIVATE_IP=$(ip addr show eth0 | awk '/inet / {print $2}' | cut -d/ -f1)
NODENAME=$(hostname -s)

# Build the kubeadm cluster
kubeadm init --config=/kubeadm-config.yaml --upload-certs \
ignore-preflight-errors ExternalEtcdVersion 2>&1 || true

kubeadm taint nodes -all node-role.kubernetes.io/control-plane-
