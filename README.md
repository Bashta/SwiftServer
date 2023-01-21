# Swift Server

## Intro

A playground to experiment with Vapor Swift and Docker!

## Docker Instructions

Build using: `docker build .` and pass the optional `--tag` to make it easier to find it later. This expects a Dockerfile present in the root directory. 

Final build command: `docker build . --tag bashta_server`

Once the container is build then we can run it using:
`docker run --name bashta_server --interactive --tty --publish 8080:8080 bashta_server`

In case the container was stopped and need to restart it again use: `docker start bashta_server` & `docker attach bashta_server`