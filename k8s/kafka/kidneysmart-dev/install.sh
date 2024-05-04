# ssh -p 2222 dmitriy@91.223.70.72 "cd /home/dmitriy/project/kidneysmart/k8s/kafka/kidneysmart-dev/ && chmod +x install.sh && ./install.sh"
#!/bin/bash

NODE_NAME="k8s-worker-1"
STORAGE_SIZE="10Gi"

echo "Проверка наличия узла $NODE_NAME..."
kubectl get node $NODE_NAME
if ! kubectl get node $NODE_NAME > /dev/null 2>&1; then
  echo "Узел $NODE_NAME не найден."
  exit 1
fi

echo "Добавление метки к узлу..."
kubectl label nodes $NODE_NAME kafka-node=1 --overwrite

echo "Применение конфигурации PV и PVC..."
kubectl apply -f yaml/kafka-pv.yaml
kubectl apply -f yaml/kafka-pvc.yaml

NAMESPACE="kidneysmart-dev"
KAFKA_RELEASE_NAME="kafka"

echo "Проверка наличия пространства имён $NAMESPACE..."
kubectl get namespace $NAMESPACE &>/dev/null || kubectl create namespace $NAMESPACE

echo "Добавление репозитория Helm и обновление индекса..."
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

echo "Установка Kafka..."
helm install $KAFKA_RELEASE_NAME bitnami/kafka --namespace $NAMESPACE \
  --set persistence.enabled=true \
  --set persistence.existingClaim=kafka-pvc \
  --set nodeSelector."kafka-node"=1 \
  --set replicaCount=1 \
  --set persistence.size=$STORAGE_SIZE

echo "Kafka установлена."
