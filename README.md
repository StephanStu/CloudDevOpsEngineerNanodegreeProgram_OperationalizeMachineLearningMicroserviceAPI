# My Solution for one Project of Udacity's Cloud DevOps Engineer Nanodegree Program - Operationalize a Machine Learning Microservice API

[![CircleCI](https://circleci.com/gh/StephanStu/CloudDevOpsEngineerNanodegreeProgram_OperationalizeMachineLearningMicroserviceAPI/tree/circleci-project-setup.svg?style=svg)](https://circleci.com/gh/StephanStu/CloudDevOpsEngineerNanodegreeProgram_OperationalizeMachineLearningMicroserviceAPI/tree/circleci-project-setup)

## Project Overview

In this project, the skills acquired in Udacity's Cloud DevOps Engineer Nanodegree Program are applied to operationalize a Machine Learning Microservice API uisng Docker and Kubernetes.


![docker-logo](data/docker-logo.png) <!-- .element height="10%" width="10%" -->


One is given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. More information about the data, which was initially taken from Kaggle, can be obtained from [the data source site](https://www.kaggle.com/c/boston-housing). This project tests displays the ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

The project goal is to operationalize a working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. This includes:
* Test project code using linting
* Complete a Dockerfile to containerize this application
* Deploy the containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

A detailed [project rubric can be found here](https://review.udacity.com/#!/rubrics/2576/view).

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

## This is a Walk-Through to "Putting a Simple Flask Application in a Docker"
This repository adopts material from Udacity's Cloud DevOps Nanodegree Program to wrap up how
to containerize a simple Flask application. By _containerize_ I mean "putting it into a Docker-
Container".
## Setting up the Environment & Run the Application
It is recommended to run this inside Amazon Web Service' Cloud 9. The first thing to do is to check out
this repository, i.e.

$ git clone <URL of repository>

Next _cd_ into the created folder and set up a virtual python environment, i.e.

$ python3 -m venv .env

where _.env_ is the name of the folder where the environment resides. The virtual python environment must
be activated with

$ source .env/bin/activate

Note, that the virtual python environment can be deactivated with the command _deactivate_.
Now

$ install all

will install all necessary packages. After that

$ python app.py

will run the simple flask app. If you are in an Amazon Web Service' Cloud 9 environment, youn will be able to see the
application at work.

## Building the Docker Container & Run the image locally
The Docker image is a "small, singe-purpose virtual machine", that must be build and can be run on a host.
The file Dockerfile tells Docker how to build that machine. To execute the process,

$ docker build --tag=loadtest .

where _loadtest_ is the name of the image being created. You can see the image in the list of images by

$ docker image ls

To run the image locally, i.e. "enter the virtual machine"

$ docker run -it loadtest bash

Now you are in the container. You can exit the container by _CTRL+D_.


![running_docker_in_AWSCloud9](data/running_docker_in_AWSCloud9.png)
