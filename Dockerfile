FROM alpine:3.5
RUN apk add --update py2-pip

COPY requirements.txt /home/app/flask-app/
RUN pip install --no-cache-dir -r /home/app/flask-app/requirements.txt

COPY app.py /home/app/flask-app/
COPY templates/index.html /home/app/flask-app/templates/

EXPOSE 5000

CMD ["python", "/home/app/flask-app/app.py"]

