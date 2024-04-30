# Docker for QAs

## Description

This is a repository based on the studies of the course: [Docker para QAs](https://www.udemy.com/course/docker-para-qas)

## Usefull commands

### To run the app folder using volumes in docker:

- Good for share your local environment with the docker container

- You must run this command on the root of this repository

```bash
docker run -d -p 8081:80 -v $(pwd)/app:/usr/share/nginx/html --name parodify-qa nginx

# -d is to detach the container from your terminal
# -p localPort:containerPort attach the service provided in the container and delivered in port 80 inside the container to the local host port 8081
# -v use the volume shared strategy from Docker where you can share the same data on a local host folder to a place inside the container. In that way changes made in one of the places (local or in docker) are the same on both places.
```

### To use a builded docker image

- Have a docker image for your test environment with all the specifications that you need.

#### Build

```bash
docker build -t parodify .

# -t tags the image that will be build with the name of your preference
```

#### Run

```bash
docker run -d -p 8081:80 --name parodify-builded parodify

# Check that you do not need the -v tag because you are wraping the source code into the builded image.
# Note. If you do changes on the app folder locally you ned to re-build your docker image.
```

### Access the application on the browser
```
http://localhost:8081/
```