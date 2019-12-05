FROM node:10-alpine

RUN apt-get update
RUN apt-get install -y python3-pip

ENTRYPOINT ["python3", "/solving.py"]
