#### Install kind:
```bash
curl -L "https://github.com/kubernetes-sigs/kind/releases/download/v0.16.0/kind-linux-amd64" -o kind && chmod +x kind
```

#### Create cluster:
```bash
./kind create cluster --image kindest/node:v1.23.12 --name k8s-test
```

#### Delete cluster:
```bash
./kind delete cluster --name k8s-test
```

#### Get config for kubectl:
```bash
./kind get kubeconfig --name k8s-test
```