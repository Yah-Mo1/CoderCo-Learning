# CoderCo Containers Challenge

Building a Multi-Container Application

# Objective

Create a multi-container application that consists of a simple Python Flask web application and a Redis database. The Flask application should use Redis to store and retrieve data.

# Requirements

## Flask Web Application

Routes:

/: Displays a welcome message.

/count: Increments and displays a visit count stored in Redis.

## Redis Database

Use Redis as a key-value store to keep track of the visit count.

## Dockerize Both Services

Flask App: Create a Dockerfile to containerize the Flask application.

Redis: Use a prebuilt Redis image or create a custom Dockerfile if needed.

Docker Compose: Use Docker Compose to manage both containers in a single application.

# Test the Application

Access the Welcome Page

Open your browser and navigate to http://localhost:5000.

Verify that the welcome message is displayed.

Test the Visit Count

Navigate to http://localhost:5000/count.

Refresh the page to ensure the visit count increments correctly.

# Bonus Features

Persistent Storage for Redis

Configure Redis to use a Docker volume to persist its data.

Environment Variables

Update the Flask application to read Redis connection details (host, port, etc.) from environment variables.

Modify the docker-compose.yml file to include the necessary environment variables.

Scaling the Application

Scale the Flask service to run multiple instances using Docker Compose.

Implement load balancing between the instances.
