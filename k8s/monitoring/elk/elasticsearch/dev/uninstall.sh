# ssh -p 2222 dmitriy@91.223.70.72 "cd /home/dmitriy/project/kidneysmart/k8s/monitoring/elk/elasticsearch/dev/ && chmod +x uninstall.sh && ./uninstall.sh"
#!/bin/bash

# Определите пространство имен, из которого нужно удалить Elasticsearch
NAMESPACE="kidneysmart-dev"
# Определить имя выпуска Helm, под которым был установлен Elasticsearch
RELEASE_NAME="elasticsearch"

# Удаление релиза Helm
helm uninstall $RELEASE_NAME --namespace $NAMESPACE

# Вывод статуса удаления
echo "Elasticsearch удален из пространства имен $NAMESPACE."
