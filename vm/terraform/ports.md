# Open Ports for Master and Worker Nodes

## Master Ports

6443/tcp -> API server
2379-2380 -> etcd server
6783/tcp, 6784 -> Weavenet CNI
10248-10260 -> Kubelet API, Scheduler, Controller Manager, Health
80, 8080, 443 -> HTTP, WebServer, HTTPS
30000-32767 -> NodePort Services

## Worker Ports

6783/tcp, 6784 -> Weavenet CNI
10248-10260 -> Kubelet API, Scheduler, Controller Manager, Health
30000-32767 -> NodePort Services

### We can use the same security group for both the master and the worker node as they have some common open ports
