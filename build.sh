REGISTRY_ORG=maxgio92
cat <<EOF | kubectl apply -f -
apiVersion: shipwright.io/v1alpha1
kind: Build
metadata:
  name: buildpack-nodejs-build
spec:
  source:
    url: https://github.com/shipwright-io/sample-nodejs
    contextDir: source-build
  strategy:
    name: buildpacks-v3
    kind: ClusterBuildStrategy
  output:
    image: docker.io/${REGISTRY_ORG}/sample-nodejs:latest
    credentials:
      name: push-secret
EOF
