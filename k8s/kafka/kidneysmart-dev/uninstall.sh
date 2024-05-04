# ssh -p 2222 dmitriy@91.223.70.72 "cd /home/dmitriy/project/kidneysmart/k8s/kafka/kidneysmart-dev/ && chmod +x uninstall.sh && ./uninstall.sh"
#!/bin/bash

NAMESPACE="kidneysmart-dev"
KAFKA_RELEASE_NAME="kafka"

echo "Удаление Kafka..."
helm uninstall $KAFKA_RELEASE_NAME --namespace $NAMESPACE
kubectl wait --for=delete pod --selector=app.kubernetes.io/name=kafka --namespace $NAMESPACE --timeout=120s

echo "Очистка меток с узлов..."
kubectl label nodes k8s-worker-1 kafka-node-

# echo "Удаление PVC..."
# kubectl delete pvc --namespace $NAMESPACE -l app.kubernetes.io/instance=$KAFKA_RELEASE_NAME
# kubectl wait --for=delete pvc --namespace $NAMESPACE -l app.kubernetes.io/instance=$KAFKA_RELEASE_NAME --timeout=60s

# echo "Удаление PV..."
# kubectl delete pv --namespace $NAMESPACE -l app.kubernetes.io/instance=$KAFKA_RELEASE_NAME
# kubectl wait --for=delete pv --namespace $NAMESPACE -l app.kubernetes.io/instance=$KAFKA_RELEASE_NAME --timeout=60s

echo "Удаление завершено."
