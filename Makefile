PROJECT ?= 
REGION ?= us-central

init: create deploy

create:
	gcloud app create \
		--quiet \
		--region="$(REGION)" \
		--project="$(PROJECT)"

deploy:
	gcloud app deploy \
		--quiet \
		--project="$(PROJECT)"

.PHONY: init create update
