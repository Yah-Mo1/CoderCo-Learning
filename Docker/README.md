Docker useful and stuff --> for topics that i found very important and useful

Linking Containers:

We modified the python file to add the sql database set up and to display the version of mysql on the webpage
we then created a custom container network using docker network
we then created a docker container within the custom network, also being sure to include the password to authenticate into the sql database
we then modified the dockerfile to include mysqlclient as a dependency to install within the container (this was we can integrate our sql container with the flask container) -->
docker run -d --name mydb --network my-custom-network -e MYSQL_ROOT_PASSWORD=my-secret-pw mysql:8

lastly, we created an image using the docker file --> docker build -t hello-flask-mysql .
and also a container within the same custom network as the previous sql container --> docker run -d --name myapp --network my-custom-network -p 5002:5002 hello-flask-mysql

Pushing an image to dockerhub registry:

First we create a repo in dockerhub
next we build an image --> docker build -t username/repo:v1
finally, we push this image to our repo in dockerhub --> docker push imagename
To pull an image from dockerhub:
docker pull imagename

Important commands to know:
Quick overview of images stored locally --> docker images
detail logs of the image --> docker inspect imageid
remove images --> docker rmi imageid
remove all unused images/containers --> docker system prune
stop running containers --> docker stop containerid
remove containers --> docker rm containerid

multi stage builds:
single stage images are quite large and can take up a lot of space --> this may slow down your deployments and require more storage

multi stage builds allow you to use multiple from statements in your dockerfile. --> to use one stage to build your application and another stage to create your image. This allows you to discard unnecessary files and dependencies, resulting in a much smaller and optimised image.
benefit is that you make your deployments faster and more efficient
