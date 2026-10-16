FROM python:latest

WORKDIR /flask

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt dist-upgrade -y
RUN apt install -y python-is-python3
RUN pip install flask

COPY . .

EXPOSE 5000/tcp

CMD ["python","hello.py"]
