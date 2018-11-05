FROM ubuntu

USER root
RUN apt-get update
RUN apt-get -y install python
RUN apt-get clean

EXPOSE 80

WORKDIR /

COPY index.html index.html
COPY esecuzione.py esecuzione.py

CMD [ "python", "-m", "SimpleHTTPServer", "80" ]
CMD [ "python", "esecuzione.py" ]
