# dev-env-front-end
A repo to start generalizing my front-end development environment using Docker

## The Objective
Use this Dockerfile as a base to start your development śetup for front-end apps without having to install Node.js on your host. Simply put, clone this repo inside your project root directory, build the image and run it to start developing withing node env.

## How to build the Docker Image

Considering you have Docker installed on your machine, run this:
```
docker build --rm -f Dockerfile -t dev-env .
```

## how to use it to develop your app

Now `cd` to your project's directory and run this:
```
docker run -v `pwd`:"/front-end" -p 3000:4200 -it dev-env:latest
```
Okay, let's translate this:

The ```-v `pwd\`:"/front-end"``` part just maps the current directory (your project's root dir) to the proper container folder.

The `-p 3000:4200` part is where you specify which port on your machine will map to the port that the server inside the container is listening.

## How to start the server inside the container

Alright! In this case, I'm interested n Angular echosystem so...I'm using **ng** CLI. So...run this once the container's Shell runs:

```
ng serve --host 0.0.0.0
```

This will garantie that you serve your app from the container and it can be found outside, from your browser running on your local machine.

That's it!!!!
