#!/bin/bash

# terraform fmt cluster-terraform.tf
# terraform init cluster-terraform.tf
# terraform validate cluster-terraform.tf
# terraform apply --auto-approve cluster-terraform.tf
# Stage de login con GKE

kubectl create ns argocd
helm repo add argo https://argoproj.github.io/argo-helm
# helm pull argo/argo-cd --version 5.8.2   # cuando se instala del paquete local
# tar -zxvf argo-cd-5.8.2.tgz
echo "Instalando argocd..."
echo "----------------------"
helm install argo-cd argo/argo-cd -n argocd --version 5.8.2
sleep 10
echo "Aplicando LB y CM argocd..."
echo "----------------------"
kubectl apply -f argocd-yaml/ -n argocd
sleep 40
curl -sSL -o ~/argocd https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
sudo mv ~/argocd /usr/local/bin/argocd
sudo chmod +x /usr/local/bin/argocd
echo "Version de argocd CLI"
echo "                     "
argocd version --client
echo "----------------------"
echo "Contraseña admin argocd"
echo "                       "
# password admin argocd
USERNAMEADMIN="admin"
PASSWORDADMIN=$(kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo)
echo "Password Admin: $PASSWORDADMIN"
echo "----------------------"
sleep 20
echo "IP external LB"
echo "                     "
IPEXTERNAL=$(kubectl get svc argocd-server-loadbalancer -n argocd -o jsonpath='{.status.loadBalancer.ingress[0].ip}')  
kubectl get svc -n argocd
echo "                     "
argocd login $IPEXTERNAL --username $USERNAMEADMIN --password $PASSWORDADMIN --insecure
USERNAMEGUET="user1"
PASSWORDGUET="123456789"
argocd account update-password --account $USERNAMEGUET --current-password $PASSWORDADMIN --new-password $PASSWORDGUET
alias k=kubectl
# test en vivo
kubectl create ns testing
argocd proj create testing -d https://kubernetes.default.svc,testing -s https://github.com/Cristianguerrer/kubernetes.git
argocd app create guestbook \
  --repo https://github.com/Cristianguerrer/kubernetes.git \
  --revision main --path ./example-manifest/guestbook-demo \
  --dest-server https://kubernetes.default.svc \
  --dest-namespace testing \
  --project testing
###
argocd proj create system-admin -d https://kubernetes.default.svc,* -s '*'
argocd app create helm-guestbook \
  --repo https://github.com/Cristianguerrer/kubernetes.git \
  --revision main --path ./example-manifest/helm-guestbook-demo \
  --dest-server https://kubernetes.default.svc \
  --dest-namespace testing \
  --sync-policy automated \
  --project system-admin
######
# argocd app sync guestbook
# helm install my-release oci://registry-1.docker.io/bitnamicharts/wordpress  # instalar wordpress

