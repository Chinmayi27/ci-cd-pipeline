CI/CD Pipeline for a simple go application
===

### A DevOps project on building a CI/CD pipeline for automation of a simple go application. This go application renders an html page.

This Project was done under the Crypt Special Interest Group of ISTE-NITK.

This Project was done using Go language, Dockerfile and Unix Shell Scripting.

---
![CI/CD Pipeline Flow](https://github.com/Chinmayi27/ci-cd-pipeline/blob/master/images/cicd-pipeline-flow.png)
#### Methodology

This Project requires a cluster up and running with a master node and any number of worker nodes.

#### Setting up the environment

Every node needs an environment setup. For the environment, compatible versions of docker and kubernetes have to be installed in every node.

Additonally, the master node needs to pod network setup. Any of the options can be picked from the below link.

https://kubernetes.io/docs/concepts/cluster-administration/addons/

#### Joining nodes to the cluster

On the master node, use the command as follows:
```
kubeadm init
```
On the worker nodes, use the join command displayed on master node:
 
![join command](https://github.com/Chinmayi27/ci-cd-pipeline/blob/master/images/join-ss.PNG)

_ Note: This token is different for every cluster. The above image shows just an example.

#### Integration and Deployment of the application

Integration and Deployment of the application will happen if there are no errors. Use the following command:
```
./build git commit -m "Your commit message"
```
##### Additional options
```
./build --help
```
##### Error Handling

Invalid arguments will display an error.

An empty string passed with git commit -m command will display an error.

#### CI/CD Pipeline Dashboard

The dashboard contains the following details:

* pod logs
* List of nodes
* List of pods
* List of deployments

---

Docker Hub and GitHub are connected and at every successful integration, the image gets updated on Docker Hub.



