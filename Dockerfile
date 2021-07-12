FROM alpine:3.5
RUN apk add --update py2-pip

COPY requirements.txt /c/home/app/flask-app/
RUN pip install --no-cache-dir -r /c/home/app/flask-app/requirements.txt

COPY app.py /c/home/app/flask-app/
COPY templates/index.html /c/home/app/flask-app/templates/

EXPOSE 5000

CMD ["python", "/c/home/app/flask-app/app.py"]

