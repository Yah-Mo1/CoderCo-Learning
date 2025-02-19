# Docker: Key Concepts & Useful Commands

## Linking Containers

To establish communication between containers, we:

1. **Modified the Python application** to:
   - Set up an **SQL database**.
   - Display the **MySQL version** on the webpage.
2. **Created a custom Docker network** using:

   ```bash
   docker network create my-custom-network
   Launched a MySQL container within the custom network, ensuring authentication via environment variables:
   bash
   ```

docker run -d --name mydb --network my-custom-network -e MYSQL_ROOT_PASSWORD=my-secret-pw mysql:8
Updated the Dockerfile to include mysqlclient as a dependency, enabling the Flask container to communicate with the MySQL container.
Built the Flask application image using:

`````

````docker build -t hello-flask-mysql .
Started the Flask container within the same custom network to ensure proper database connectivity:
bash```
docker run -d --name myapp --network my-custom-network -p 5002:5002 hello-flask-mysql
Pushing an Image to Docker Hub
To share an image via Docker Hub:
`````

Create a repository on Docker Hub.
Build the image and tag it appropriately:
bash
Copy
Edit
docker build -t username/repo:v1 .
Push the image to Docker Hub:
bash
Copy
Edit
docker push username/repo:v1
To pull an image from Docker Hub, use:
bash
Copy
Edit
docker pull username/repo:v1
Important Docker Commands
Managing Images & Containers
View stored images:
bash
Copy
Edit
docker images
Get detailed image information:
bash
Copy
Edit
docker inspect <image_id>
Remove an image:
bash
Copy
Edit
docker rmi <image_id>
Remove all unused images & containers:
bash
Copy
Edit
docker system prune
Stop a running container:
bash
Copy
Edit
docker stop <container_id>
Remove a container:
bash
Copy
Edit
docker rm <container_id>
Multi-Stage Builds
Why Use Multi-Stage Builds?
Single-stage builds often result in large images that consume more storage and slow down deployments. Multi-stage builds help optimize this process by:

Allowing multiple FROM statements in a Dockerfile.
Using one stage to build the application and another to package the final image, eliminating unnecessary dependencies.
Producing a smaller, more efficient image, leading to faster deployments.
Example of a Multi-Stage Build
dockerfile
Copy
Edit

# Stage 1: Build the application

FROM python:3.9 AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Stage 2: Create a minimal final image

FROM python:3.9-slim
WORKDIR /app
COPY --from=builder /app /app
CMD ["python", "app.py"]
By discarding unnecessary files and dependencies, multi-stage builds ensure smaller images, improved performance, and optimized storage usage. 🚀

markdown
Copy
Edit

### **Improvements Made**

✅ **Clearer and more structured formatting**  
✅ **Better explanations with step-by-step guidance**  
✅ **Improved command readability**  
✅ **Added an example for multi-stage builds**

This version makes the README **more professional, user-friendly, and informative**. Let me know if you need further refinements! 😊🚀
