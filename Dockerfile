FROM python:3.9-slim

ARG DEBIAN_FRONTEND="noninteractive"

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /project_ministerstvo_strizhek

COPY . Pipfile Pipfile.lock /project_ministerstvo_strizhek/
RUN pip install pipenv && pipenv install --system

RUN python manage.py collectstatic --noinput
RUN pipenv install --system --deploy --ignore-pipfile 

COPY . /project_ministerstvo_strizhek/
