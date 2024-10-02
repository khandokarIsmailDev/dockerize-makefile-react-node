#Varibales
DOCKER_USERNAME = ismailkhandokar

# fronend variables
FRONTEND_IMAGE_NAME = custom-fronend
FRONTEND_TAG = latest
BACKEND_IMAGE_NAME = custom-backend 
BACKEND_TAG = latest 




# build the docker image for frontend
build-frontend:
	docker build -t $(FRONTEND_IMAGE_NAME) ./fronend

# tag the docker image for frontend
tag-frontend:
	docker tag $(FRONTEND_IMAGE_NAME):$(FRONTEND_TAG) $(DOCKER_USERNAME)/$(FRONTEND_IMAGE_NAME)

# Push the docker image for the frontend
push-frontend:
	docker push $(DOCKER_USERNAME)/$(FRONTEND_IMAGE_NAME):$(FRONTEND_TAG)

# Combind build,tag,push 
all-frontend: build-frontend tag-frontend push-frontend


# build the docker image for backend
build-backend:
	docker build -t $(BACKEND_IMAGE_NAME) ./backend 

#tag the docker image for backend
tag-backend:
	docker tag $(BACKEND_IMAGE_NAME):$(BACKEND_TAG) $(DOCKER_USERNAME)/$(BACKEND_IMAGE_NAME)

#PUSH THE Dcoker image for the backend
push-backend:
	docker push $(DOCKER_USERNAME)/$(BACKEND_IMAGE_NAME):$(BACKEND_TAG)

#COMBine all
all-backend: build-backend tag-backend push-backend

#run all for both frontend and backend
all: all-fronend all-backend

.PHONY: build-frontend tag-frontend push-frontend all-frontend clean-frontend \
		build-backend tag-backend push-backend all-backend clean-backend
