# ssh -p 2222 dmitriy@91.223.70.72 "cd /home/dmitriy/project/kidneysmart/k8s/monitoring/elk/elasticsearch/dev/ && chmod +x install.sh && ./install.sh"

# k8s\monitoring\elk\elasticsearch\dev\install.sh
#!/bin/bash

# Определите пространство имен, в котором будет установлен Elasticsearch
NAMESPACE="kidneysmart-dev"
# Определить имя выпуска для развертывания Helm
RELEASE_NAME="elasticsearch"

# Путь к локальному Helm чарту
CHART_DIR="/home/dmitriy/project/kidneysmart/k8s/monitoring/elk/elasticsearch/elasticsearch"
# Путь к файлу values.yaml
VALUES_FILE="$CHART_DIR/values.yaml"

# Создать пространство имен, если оно не существует
kubectl get namespace $NAMESPACE || kubectl create namespace $NAMESPACE

# Чтобы переключить ваш текущий контекст Kubernetes :
kubectl config set-context --current --namespace=$NAMESPACE

# Установите Elasticsearch, используя локальный Helm чарт и конкретный файл values.yaml
helm install $RELEASE_NAME $CHART_DIR --namespace $NAMESPACE -f $VALUES_FILE

# Вывод статуса установки
echo "Elasticsearch установлен в пространство имен $NAMESPACE под именем релиза $RELEASE_NAME."
