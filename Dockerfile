FROM docker.io/library/python

LABEL maintainer="dvercill@redhat.com"
LABEL version="1.0"

ADD src/. /var/www

RUN pip3 install -r /var/www/requirements.txt

EXPOSE 8080

USER 12345

CMD ["python3", "/var/www/app.py"]