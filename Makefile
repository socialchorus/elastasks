REGION ?= us-east-1

compile:
	docker build --no-cache --compress --force-rm --pull -t tasky .

tag:
	docker tag tasky:latest socialchorus/tasky:latest

push:
	docker push socialchorus/tasky:latest

release: login compile tag push

.PHONY: repo-login

# HELPERS
login:
	bash -c 'docker login & exit'
