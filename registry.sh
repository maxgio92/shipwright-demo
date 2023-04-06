REGISTRY_SERVER=https://index.docker.io/v1/
REGISTRY_USER=maxgio92
REGISTRY_PASSWORD="${REGISTRY_PASSWORD:-}"
REGISTRY_EMAIL="massimiliano.giovagnoli.1992@gmail.com"
kubectl create secret docker-registry push-secret \
    --docker-server=$REGISTRY_SERVER \
    --docker-username=$REGISTRY_USER \
    --docker-password=$REGISTRY_PASSWORD  \
    --docker-email=$REGISTRY_EMAIL
