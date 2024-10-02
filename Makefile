#Varibales
DOCKER_USERNAME = ismailkhandokar

# fronend variables
FRONTEND_IMAGE_NAME = custom-fronend
FRONTEND_TAG = latest



# build the docker image for frontend
build-frontend:
	docker build -t $(FRONTEND_IMAGE_NAME) ./fronend

# tag the docker image for frontend
tag-frontend:
	docker tag $(FRONTEND_IMAGE_NAME):$(FRONTEND_TAG) $(DOCKER_USERNAME)/$(FRONTEND_IMAGE_NAME)

# Push the docker image for the frontend
push-frontend:
	docker push $(DOCKER_USERNAME)/$(FRONTEND_IMAGE_NAME):$(FRONTEND_TAG)