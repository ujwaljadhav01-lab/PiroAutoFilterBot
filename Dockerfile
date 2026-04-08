FROM python:3.11-slim

RUN apt-get update && apt-get upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
WORKDIR /PiroAutoFilterBot

COPY . .

CMD ["python3", "bot.py"]
