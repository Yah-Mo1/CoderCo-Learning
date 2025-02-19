# Creating and Managing a Kubernetes Cluster

## Step 1: Define Cluster Configuration

Before creating a cluster, you need to define its configuration, such as:

- Number of worker nodes
- Type of cluster

## Step 2: Create the Cluster

Use the following command to create a cluster using your YAML configuration:

```sh
kind create cluster --config kind-conf.yml --name k8s-demo
```

````

## Step 3: Get Cluster Information

To retrieve details about the cluster, run:

```sh
kubectl cluster-info kind-k8s-demo
```

To list the nodes in your cluster:

```sh
kubectl get nodes
```

## Step 4: Deploy an Nginx Server

Deploy an Nginx pod in your cluster using:

```sh
kubectl run pod nginx --image=nginx
```

This command creates a pod running Nginx.

## Step 5: Verify Deployment

To list the running pods, use:

```sh
kubectl get pods
```
````
