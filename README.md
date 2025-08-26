# Mukuru DevOps Assessment

## Intent
* Display familiarity with Docker, GIT & Pipelines
* Ability to study new technologies and reach an outcome within a timeframe
* Communicate the solution through configuration files & repository README

## Overview
_The goal of this exercise is to dockerise this application, to prepare it for a deployment into kubernetes, and to make the build and deployment consistent. Some of these steps are optional, so you can choose what you'd like to focus on, depending on the time you have available._

## Task
### Dockerise the application
* Create a free GitHub / GitLab / BitBucket account using any name (or use your existing personal account if you like) - https://gitlab.com,  https://github.com  or https://bitbucket.org/ & create a public repository called docker-compose-demo (GitLab is recommended as it provides pipelines and a container registry)
* Add a Docker file to allow a Docker image to be created for the application
* Add a docker-compose file to allow the application to run simply by using the docker-compose up command, and navigating to http://localhost:8080/. This should allow anyone to clone the repo and run the application with only docker installed (no need for Go)

### Automate the above build process with a pipeline (optional)
* Setup a build / publish pipeline to build the images on every commit
* As a part of the pipeline, push the built docker image to a docker registry automatically (as mentioned above GitLab provides pipelines & a docker image registry, otherwise you can create a free Docker Hub (https://hub.docker.com/) account)

### Configure a kubernetes deployment (optional)
* Using something like Docker for Mac / Windows local kubernetes cluster, configure a method to deploy this application into kubernetes
* This application should be available from localhost without needing to proxy into the cluster
* Scale the instance to 4 replicas

### Enable HTTPS (optional) 
* Allow the application to be served over HTTPS
