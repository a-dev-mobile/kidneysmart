# ssh -p 2222 dmitriy@91.223.70.72 "cd /home/dmitriy/project/kidneysmart/k8s/monitoring/elk/elasticsearch/dev/ && chmod +x uninstall.sh && ./uninstall.sh"
#!/bin/bash

# Определите пространство имен, из которого нужно удалить Elasticsearch
NAMESPACE="kidneysmart-dev"
# Определить имя выпуска Helm, под которым был установлен Elasticsearch
RELEASE_NAME="elk"

echo "Удаление $RELEASE_NAME..."
helm uninstall $RELEASE_NAME --namespace $NAMESPACE

echo "Удаление PV PVC ..."
kubectl delete -f yaml/pv.yaml
kubectl delete -f yaml/pvc.yaml

kubectl delete -n kidneysmart-dev persistentvolumeclaim elasticsearch-master-elasticsearch-master-2
kubectl delete -n kidneysmart-dev persistentvolumeclaim elasticsearch-master-elasticsearch-master-1
kubectl delete -n kidneysmart-dev persistentvolumeclaim elasticsearch-master-elasticsearch-master-0
echo "Удаление завершено."

