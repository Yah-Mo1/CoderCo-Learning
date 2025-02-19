Pod controllers;
simplest one is the replica set

Replicas are the simplest k8 pod controller resources

A replica set ensures that a specified number of pod instances are running at any time

They maintain a given number of pod instance fails, the replica set will automatically spin up a new instance to replace it

very similar to deployment but cant perform rolling upgrades, its not used often as deployments are preferred.

Difference between replica sets and deployments
