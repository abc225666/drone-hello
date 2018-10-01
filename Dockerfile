FROM python:3.6.6-alpine3.8

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app

RUN pip install --no-cache-dir -r requirements.txt

COPY . /usr/src/app

EXPOSE 8888

CMD ["./helloworld.py"]
