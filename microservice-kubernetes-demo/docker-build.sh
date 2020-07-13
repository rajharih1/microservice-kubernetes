#!/bin/sh
if [ -z "$DOCKER_ACCOUNT" ]; then
    DOCKER_ACCOUNT=hubrajesh
fi;
docker build --tag=microservice-kubernetes-demo-apache apache
docker tag microservice-kubernetes-demo-apache $DOCKER_ACCOUNT/microservice-kubernetes-demo-apache:1.0.0
docker push $DOCKER_ACCOUNT/microservice-kubernetes-demo-apache:1.0.0

docker build --tag=microservice-kubernetes-demo-catalog microservice-kubernetes-demo-catalog
docker tag microservice-kubernetes-demo-catalog $DOCKER_ACCOUNT/microservice-kubernetes-demo-catalog:1.0.0
docker push $DOCKER_ACCOUNT/microservice-kubernetes-demo-catalog:1.0.0

docker build --tag=microservice-kubernetes-demo-customer microservice-kubernetes-demo-customer
docker tag microservice-kubernetes-demo-customer $DOCKER_ACCOUNT/microservice-kubernetes-demo-customer:1.0.0
docker push $DOCKER_ACCOUNT/microservice-kubernetes-demo-customer:1.0.0

docker build --tag=microservice-kubernetes-demo-order microservice-kubernetes-demo-order
docker tag microservice-kubernetes-demo-order $DOCKER_ACCOUNT/microservice-kubernetes-demo-order:1.0.0
docker push $DOCKER_ACCOUNT/microservice-kubernetes-demo-order:1.0.0
