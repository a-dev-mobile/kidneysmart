# ssh -p 2222 dmitriy@91.223.70.72 "cd /home/dmitriy/project/kidneysmart/k8s/monitoring/elk/elasticsearch/dev/ && chmod +x install.sh && ./install.sh"

# k8s\monitoring\elk\elasticsearch\dev\install.sh
#!/bin/bash

# Определите пространство имен, в котором будет установлен Elasticsearch

NODE_NAME="k8s-worker-1"
NAMESPACE="kidneysmart-dev"

# Определить имя выпуска для развертывания Helm
RELEASE_NAME="elk"

# Путь к локальному Helm чарту
CHART_DIR="/home/dmitriy/project/kidneysmart/k8s/monitoring/elk/elasticsearch/elasticsearch"
# Путь к файлу values.yaml
VALUES_FILE="$CHART_DIR/values.yaml"


echo "Проверка наличия узла $NODE_NAME..."
kubectl get node $NODE_NAME
if ! kubectl get node $NODE_NAME > /dev/null 2>&1; then
  echo "Узел $NODE_NAME не найден."
  exit 1
fi

echo "Добавление метки к узлу..."
kubectl label nodes $NODE_NAME $RELEASE_NAME-node=1 --overwrite


echo "Проверка наличия пространства имён $NAMESPACE..."
kubectl get namespace $NAMESPACE &>/dev/null || kubectl create namespace $NAMESPACE

echo "переключить ваш текущий контекст Kubernetes $NAMESPACE"
kubectl config set-context --current --namespace=$NAMESPACE

echo "Применение конфигурации PV и PVC..."
kubectl apply -f yaml/pv.yaml
kubectl apply -f yaml/pvc.yaml


# Установите Elasticsearch, используя локальный Helm чарт и конкретный файл values.yaml
helm install $RELEASE_NAME $CHART_DIR --namespace $NAMESPACE -f $VALUES_FILE

# Вывод статуса установки
echo "Elasticsearch установлен в пространство имен $NAMESPACE под именем релиза $RELEASE_NAME."
