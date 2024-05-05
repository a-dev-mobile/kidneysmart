# ssh -p 2222 dmitriy@91.223.70.72 "cd /home/dmitriy/project/kidneysmart/k8s/postgresql/dev/ && chmod +x install.sh && ./install.sh"

#!/bin/bash

NAMESPACE="kidneysmart-dev"

echo "Настройка среды PostgreSQL в пространстве имен $NAMESPACE..."


kubectl apply -f yaml/secret.yaml

kubectl apply -f yaml/pv.yaml
kubectl apply -f yaml/pvc.yaml
kubectl apply -f yaml/service.yaml

echo "Развертывание PostgreSQL..."
kubectl apply -f yaml/deployment.yaml

echo "Развертывание PostgreSQL инициировано в пространстве имен. $NAMESPACE."