FROM python:3.7-alpine

WORKDIR /usr/src/app

COPY . ./
RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=app.py
CMD [ "python", "-m", "flask", "run" ]
