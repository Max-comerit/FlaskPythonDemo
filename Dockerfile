# Starta från en officiell Python-bild
FROM python:3.8-slim

# Sätt arbetskatalogen i containern
WORKDIR /app

# Kopiera requirements-filen och installera beroenden
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Kopiera app-koden till containern
COPY . .

# Exponera porten som din app kommer att köras på
EXPOSE 8000

# Startkommandot som kör appen med Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]