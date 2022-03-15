FROM python:3.8

RUN mkdir /app
WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt

EXPOSE 8080
CMD ["python", "main.py"]