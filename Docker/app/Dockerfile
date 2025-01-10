#Docker image used to containerise our application --> Single stage build
# FROM python:3.8-slim
# WORKDIR /app 
# COPY . . 
# # Install system dependencies required for mysqlclient
# RUN apt-get update && apt-get install -y \
#     gcc \
#     libmariadb-dev \
#     default-libmysqlclient-dev \
#     pkg-config \
#     && apt-get clean
# RUN pip install flask 
# RUN pip install mysqlclient
# EXPOSE 5002
# CMD ["python", "app.py"] 



#Multi stage docker file
# Stage 1: Build stage

FROM python:3.8-slim as Build
WORKDIR /app
RUN apt-get update && apt-get install -y \
    gcc \
    libmariadb-dev \
    default-libmysqlclient-dev \
    pkg-config \
    && apt-get clean
COPY . . 
RUN pip install flask mysqlclient


# Stage 2: Production stage
FROM python:3.8-slim 
WORKDIR /app
COPY --from=Build /app /app/
EXPOSE 5002
CMD ["python", "app.py"] 
