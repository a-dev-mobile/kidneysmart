# ssh -p 2222 dmitriy@91.223.70.72 "cd /home/dmitriy/project/kidneysmart/k8s/kafka/kidneysmart-dev/ && chmod +x uninstall.sh && ./uninstall.sh"
#!/bin/bash

NAMESPACE="kidneysmart-dev"
RELEASE_NAME="kafka"

echo "Удаление Kafka..."
helm uninstall $RELEASE_NAME --namespace $NAMESPACE
kubectl wait --for=delete pod --selector=app.kubernetes.io/name=kafka --namespace $NAMESPACE --timeout=120s

echo "Очистка меток с узлов..."
kubectl label nodes k8s-worker-1 kafka-node-

echo "Удаление PVC..."
kubectl delete -n kidneysmart-dev persistentvolumeclaim data-kafka-controller-0
kubectl delete -n kidneysmart-dev persistentvolumeclaim data-kafka-controller-1
kubectl delete -n kidneysmart-dev persistentvolumeclaim data-kafka-controller-2


echo "Удаление PV..."
kubectl delete persistentvolume kafka-pv-0
kubectl delete persistentvolume kafka-pv-1
kubectl delete persistentvolume kafka-pv-2


echo "Удаление завершено."
