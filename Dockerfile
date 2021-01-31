FROM python:3.8
LABEL maintainer="eyammer@gmail.com"
ARG FLASK_APP=server.py
ARG FLASK_ENV=development

ENV FLASK_APP=${FLASK_APP}
ENV FLASK_ENV=${FLASK_ENV}

COPY . /app
WORKDIR /app
RUN pip install -t requirements.txt
ENTRYPOINT flask run --host 0.0.0.0 --port 5000