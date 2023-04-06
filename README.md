# Quickstart

```shell
kind create cluster shipwright-demo --config kind-config.yaml
kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/previous/v0.44.0/release.yaml
kubectl apply --filename https://github.com/shipwright-io/build/releases/download/v0.11.0/release.yaml
kubectl apply --filename https://github.com/shipwright-io/build/releases/download/v0.11.0/sample-strategies.yaml
export REGISTRY_PASSWORD=<changeme>
bash registry.sh
bash build.sh
bash buildrun.sh
kubectl get buildrun -w
```
