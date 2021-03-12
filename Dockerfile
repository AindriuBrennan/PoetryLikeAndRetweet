FROM python:3.7-alpine



COPY config.py /twitter_bot/
COPY main.py /twitter_bot/
COPY requirements.txt /tmp
RUN pip3 install -r /tmp/requirements.txt

WORKDIR /twitter_bot

CMD ["python3", "main.py"]