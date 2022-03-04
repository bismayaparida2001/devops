FROM ubuntu
RUN apt-get update -y && \
    apt-get install -y python3-pip python-dev && \
    apt-get install -y python3-venv
COPY ./my.txt /app/my.txt

WORKDIR /app

RUN pip install -r my.txt

COPY . /app

ENTRYPOINT ["python3"]
CMD ["app.py"]
