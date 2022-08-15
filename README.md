# basic-python-image

This repo consists of three pieces:
  * A basic python script
  * A dockerfile to build said python script
  * A helm chart to deploy said docker image into Kubernetes

To build and push the docker image run:
  * `docker image build -t <image name>:<tag name> .`
  * `docker push colehendo/<image name>:<tag name>`

To deploy the image in kubernetes (locally) run:
  * `minikube start`
    * If minikube isn't installed, run `brew install minikube`
  * `helm install <release name of your choice> ./basic-python-helm-chart`
    * If the release has already been installed, run
      * `helm upgrade <release name from previous step> ./basic-python-helm-chart`