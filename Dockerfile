FROM python:3.8-slim-buster

COPY requirements.txt /requirements.txt

RUN pip install -r requirements.txt

ADD . /app

WORKDIR /app

EXPOSE 8000


#CMD ["flask", "run", "--host=0.0.0.0", "--port=8000"]