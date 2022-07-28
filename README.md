[![CircleCI](https://dl.circleci.com/status-badge/img/gh/Clementol/machine-learning-ops/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/Clementol/machine-learning-ops/tree/main)

## Project Overview

  This project predicts housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. Given a pre-trained `sklearn` model that has been trained.  You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

This project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested


**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---
# Prerequisites
```
Python 3.7
Docker
Kubernetes
```

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
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

## Brief Explanation of the Files 
* .circleci > config.yml: Circleci configuration file
* model_data > *: Containing trained sklearn model and dataset for Boston housing
* output_txt_files > docker_out.txt:  prediction log statemetn from docker app
* output_txt_files > kubernetes_out.txt: kubernetes log info
* app.py: Python Flask app to run the prediction
* Dockerfile: Docker file for containerization
* make_prediction.sh: Shell script to run prediction
* Makefile: Includes instructions on environment setup and lint tests
* Readme.md: Project documentation
* requirements.txt: Containg python libraries to be installed
* run_docker.sh: Shell script to build and run docker container
* run_kubernetes.sh: Shell script to run docker hub with kubernetes
* upload_docker.sh: Shell script to push docker container to docker hub