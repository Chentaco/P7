FROM ubuntu:latest

#Autor
MAINTAINER Ramon Sanchez Garcia <chentaco@correo.ugr.es>

#Actualizar Sistema Base

RUN apt-get update && \
  apt-get -y install sudo

# Instalar Python
RUN sudo apt-get -y install python-setuptools
RUN sudo apt-get -y install python-dev
RUN sudo apt-get -y install build-essential
RUN sudo apt-get -y install python-psycopg2
RUN sudo apt-get -y install libpq-dev
RUN sudo apt-get -y install python-pip
RUN sudo pip install --upgrade pip

# Instalar editor de textos
RUN sudo apt-get install -p nano

# Instalar Mongo
RUN sudo apt-get -y install mongodb

#Descargar aplicacion
RUN sudo apt-get -y install git
RUN sudo git clone https://github.com/Chentaco/P7.git

#Instalar aplicacion
RUN cd P7/ && pip install -r requirements.txt
RUN cd P7/ && python manage.py makemigrations --noinput
RUN cd P7/ && python manage.py migrate --noinput

#Puerto
EXPOSE 8080
