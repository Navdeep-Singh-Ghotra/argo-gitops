# argo-gitops
Test projects implementing gitops

Install argo cd 
```./installargo.sh```

test argo cd installation
```argocd version```

install argocd in kubebernetes cluster
```
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```

Acces argocd ui
```
kubectl port-forward svc/argocd-server -n argocd 8080:443

kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
# username is admin
```

