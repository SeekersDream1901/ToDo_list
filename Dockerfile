FROM python:3.10.7-slim

WORKDIR /opt

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .


ENTRYPOINT ["bash", "entrypoint.sh"]

CMD ["gunicorn", "ToDo_list.wsgi", "-w", "4", "-b", "0.0.0.0:8000"]

