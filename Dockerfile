FROM python:3.9

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8080

# Startkommandot som kör appen med Gunicorn
CMD ["python", "app.py"]