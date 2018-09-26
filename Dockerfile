FROM python:2.7-slim

WORKDIR /app

COPY neurioToPvoutput.py /app/
COPY requirements.txt /app/

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/* 
RUN pip install --trusted-host pypi.python.org -r requirements.txt

CMD ["python", "neurioToPvoutput.py", "-t", "2"]
