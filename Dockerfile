FROM python:3.10.13-bullseye

COPY . .

RUN pip install poetry==1.6.1