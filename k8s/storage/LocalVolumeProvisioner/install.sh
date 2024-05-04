# ssh -p 2222 dmitriy@91.223.70.72 "cd /home/dmitriy/project/kidneysmart/k8s/storage/LocalVolumeProvisioner/ && chmod +x install.sh && ./install.sh"
# k8s\storage\LocalVolumeProvisioner\install.sh


#!/bin/bash

echo "Добавление Helm репозитория для Local Volume Provisioner..."
helm repo add sig-storage https://kubernetes-sigs.github.io/sig-storage-local-static-provisioner/
helm repo update

echo "Установка Local Volume Provisioner в пространство имен 'kube-system'..."
helm install local-volume-provisioner sig-storage/local-static-provisioner --namespace kube-system -f ./yaml/configmap.yaml

echo "Local Volume Provisioner успешно установлен."