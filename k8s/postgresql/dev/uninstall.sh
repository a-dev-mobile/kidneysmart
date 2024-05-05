# ssh -p 2222 dmitriy@91.223.70.72 "cd /home/dmitriy/project/kidneysmart/k8s/postgresql/dev/ && chmod +x uninstall.sh && ./uninstall.sh"
#!/bin/bash


NAMESPACE="kidneysmart-dev"

echo "Удаление PostgreSQL..."

kubectl delete -f yaml/deployment.yaml
kubectl delete -f yaml/secret.yaml
kubectl delete -f yaml/pvc.yaml
kubectl delete -f yaml/service.yaml

# kubectl delete -f yaml/pv.yaml

echo "PostgreSQL удален из пространства имен. $NAMESPACE."


