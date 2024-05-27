# Kubernetes Deployment

This repository contains the Kubernetes deployment files.

## Prerequisites

- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [Docker Desktop](https://www.docker.com/products/docker-desktop)

## Basic Kubernetes Commands

### Connect to a Kubernetes cluster

```bash
kubectl config use-context my-cluster
```

### Apply a deployment

```bash
kubectl apply -f deployment.yaml
```

### List all deployments

```bash
kubectl get deployments
```

### List all pods

```bash
kubectl get pods
```

### List all services

```bash
kubectl get services
```

### List all nodes

```bash
kubectl get nodes
```

### Forward a local port to a port in a pod

```bash
kubectl port-forward my-pod 8080:80
```
### Create LoadBalancer service

```bash
kubectl expose deployment <nombre-del-deployment> --type=LoadBalancer --port=<puerto-externo> --target-port=<puerto-interno-k8s>
```

### Delete a deployment

```bash
kubectl delete deployment my-deployment
```

### Delete a pod

```bash
kubectl delete pod my-pod
```

### Delete a service

```bash
kubectl delete service my-service
```

### Delete a node

```bash
kubectl delete node my-node
```

### Get logs from a pod

```bash
kubectl logs my-pod
```

### Get logs from a specific container in a pod

```bash
kubectl logs my-pod -c my-container
```

### Get logs from a previous instance of a pod

```bash
kubectl logs my-pod --previous
```

### Get logs from a previous instance of a specific container in a pod

```bash
kubectl logs my-pod -c my-container --previous
```

### Get logs from a pod and follow the logs

```bash
kubectl logs -f my-pod
```

### Describe a pod

```bash
kubectl describe pod my-pod
```


