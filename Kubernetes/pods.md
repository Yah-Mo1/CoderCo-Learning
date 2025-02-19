A pod is the smallest unit of resource in k8s
It represents one instance of the image that has been generated from an application

All containers in a pod have the same ip address and port, and have access to the same shared local storage to a node that is hosting in a pod
Containers dont get acces to local storage, volumes must be mounted to each container in a pod

pods yml file includes root level properties:
apiVersion - the version of the kubernetes api to use the create the object of the pod
Kind - the type of object we are trying to create
Metadata - details about the object we are creating, things like its names, labels and annotation
Spec - Additional information about the object

to create the pod, we write the command --> kubectl -f pod.yml
