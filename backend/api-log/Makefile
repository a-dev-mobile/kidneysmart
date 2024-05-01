# Имя вашего образа
IMAGE_NAME=api-log-imge

# Имя вашего контейнера
CONTAINER_NAME=api-log-container

# Цель для сборки образа
build:
	docker build -t $(IMAGE_NAME) .

# Цель для запуска контейнера
start:
	docker run -d -p 8001:8001 --name $(CONTAINER_NAME) $(IMAGE_NAME)

# Цель для перезапуска контейнера
restart:
	docker restart $(CONTAINER_NAME)

# Цель для остановки контейнера, которая не вызовет ошибку, если контейнер не существует
stop:
	@docker ps -a | grep -q $(CONTAINER_NAME) && docker stop $(CONTAINER_NAME) || echo "No container to stop"


# Цель для удаления контейнера, которая не вызовет ошибку, если контейнера нет
rm:
	@docker ps -a | grep -q $(CONTAINER_NAME) && docker rm $(CONTAINER_NAME) || echo "No container to remove"

# Цель для удаления образа
rm-image:
	docker rmi $(IMAGE_NAME)
