#install:
#	pip install --upgrade pip &&\
#	pip install -r requirements.txt
#
#format:
#	python -m black code
#
#lint:
#	pylint code &&\
#	black code --check &&\
#	bandit -r code -x ./tests -s B104
#
#test:
#	pytest
#
#docker-build:
#	docker build -t python-app .
#
#docker-run:
#	docker run -d -p 5000:5000 python-app
#
#docker-run-debug:
#	docker run -it --entrypoint /bin/bash python-app -s
#
#docker-stop:
#	docker stop $$(docker ps -a -q --filter ancestor=python-app)