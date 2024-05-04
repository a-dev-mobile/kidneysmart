# ssh -p 2222 dmitriy@91.223.70.72 "cd /home/dmitriy/project/kidneysmart/k8s/storage/ && chmod +x uninstall.sh && ./uninstall.sh"
#!/bin/bash


echo "Удаление конфигурации storageclass"
kubectl delete -f yaml/storageclass.yaml
