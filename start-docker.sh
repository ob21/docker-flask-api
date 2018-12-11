#!/bin/bash
#docker build -t docker-flask-image
#docker images -a
#docker stop docker-image-container
#docker rm docker-image-container
docker run -d --name docker-flask-container -p 80:80 -v $(pwd)/app:/app -e FLASK_APP=main.py -e FLASK_DEBUG=1 docker-flask-image flask run --host=0.0.0.0 --port=80
