FROM python:3.10
#mettiamo la versione di python da utilizzare
ENV PYTHONUNBUFFERED=1
#
WORKDIR /code
#tutti i dati che verranno creati dal progetto andranno in questa directory del container
COPY requirements.txt .
#copia il file requirements.txt dentro la cartella /code
RUN pip3 install -r requirements.txt
#installa tutte le librerie che serviranno al progetto
COPY . .

EXPOSE 8000

CMD ["python3","manage.py","runserver"]
