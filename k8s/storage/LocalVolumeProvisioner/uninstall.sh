# ssh -p 2222 dmitriy@91.223.70.72 "cd /home/dmitriy/project/kidneysmart/k8s/storage/LocalVolumeProvisioner/ && chmod +x uninstall.sh && ./uninstall.sh"
#!/bin/bash

#!/bin/bash

echo "Удаление Local Volume Provisioner из пространства имен 'kube-system'..."
helm uninstall local-volume-provisioner --namespace kube-system

echo "Local Volume Provisioner успешно удален."


# echo "Удаление конфигурации storageclass"
kubectl delete -f ./yaml/configmap.yaml