FROM python:3.9

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

COPY ./app.py /code/app.py

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

CMD ["gunicorn ","-w" ,"4", "app:app"]