Deplyoments - A powerful k8A powerful K8s controller that helps you manage your application across multiple instances.
Acts like the project manager for your k8s applications
It helps you create/update pods, and ensures the right nubmer of pods are running as specified within the deployment specification.

You can instantly scale up or down depending on how many pods you need

You can also easily upgrade or roll back deployments

Deployments manage the number of replicas, handle upgrades, rollbacks and scaling in a way that ensures that your k8s applications are always available and up to daste

Creating deployments:
You can create deployments imperatively using the command for example:
kubectl create deploy nginx-deployment --image=nginx --replicas=3

or you can create it declaritively using a deployment configuration file

Differences between the two?
...
