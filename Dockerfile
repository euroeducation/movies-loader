FROM python:3.9.24
LABEL MAINTAINER=euroeducation

WORKDIR /app 

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY movies.json main.py ./

CMD python main.py
