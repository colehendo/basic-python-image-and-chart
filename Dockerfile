FROM python:3.10.6
WORKDIR /usr

COPY ./app app
CMD ["python", "app/main.py"]