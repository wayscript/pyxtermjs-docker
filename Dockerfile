FROM python:3.9-slim

COPY ./requirements.txt /src/requirements.txt
RUN pip3 install -r /src/requirements.txt

COPY ./main.py /src/main.py
COPY ./pyxtermjs_docker /src/pyxtermjs_docker

WORKDIR /src
RUN export PYTHONPATH=$PYTHONPATH:/src:/src/pyxtermjs_docker
