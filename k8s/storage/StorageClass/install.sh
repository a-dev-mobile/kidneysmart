# ssh -p 2222 dmitriy@91.223.70.72 "cd /home/dmitriy/project/kidneysmart/k8s/storage/ && chmod +x install.sh && ./install.sh"
#!/bin/bash


echo "Применение конфигурации storageclass"
kubectl apply -f yaml/storageclass.yaml