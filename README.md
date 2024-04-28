# Docker for QAs

## Description

This is a repository based on the studies of the course: [Docker para QAs](https://www.udemy.com/course/docker-para-qas)

## Usefull commands

- To run the app folder using volumes in docker:
    - Good for share your local environment with the docker container

```bash
docker run -d -p 8081:80 -v $(pwd)/app:/usr/share/nginx/html --name parodify-qa nginx
# -d is to detach the container from your terminal
# -p localPort:containerPort attach the service provided in the container and delivered in port 80 inside the container to the local host port 8081
# -v use the volume shared strategy from Docker where you can share the same data on a local host folder to a place inside the container. In that way changes made in one of the places (local or in docker) are the same on both places.
```
