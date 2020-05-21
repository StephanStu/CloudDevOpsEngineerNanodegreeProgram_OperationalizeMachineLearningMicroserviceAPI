# This is a Walk-Through to "Putting a Simple Flask Application in a Docker"
This repository adopts material from Udacity's Cloud DevOps Nanodegree Program to wrap up how 
to containerize a simple Flask application. By _containerize_ I mean "putting it into a Docker-
Container". 
## Setting up the Environment & Run the Application
It is recommended to run this inside Amazon Web Service' Cloud 9. The first thing to do is to check out 
this repository, i.e.

$ git clone https://github.com/StephanStu/Simple-Flask-App-in-a-Docker.git

Next _cd_ into the created folder and set up a virtual python environment, i.e.

$ python3 -m venv .app

where _.app_ is the name of the folder where the environment resides. The virtual python environment must
be activated with 

$ source .app/bin/activate

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




