# Self Managed KubeAdm Cluster

Setting Up Kubeadm Cluster that is Self Managed and Runs on EC2 machines

## Steps

- EC2 and Security Group Setup with Terraform for Nodes
- Setting Up K8S environment on Master and Worker Nodes
- CRI-O for KubeAdm Cluster Runtime
- KubeAdm Init and Config Configuration
- Kubernetes API Server Configuration

## TODO

- Setting up External Postgres instead of etcd for state management
- Monitoring with Metric Controller (ik) / Prometheus (idk)
- Ingress, Ingress Controller and Load Balancer Setup for Securing Worker Routes
