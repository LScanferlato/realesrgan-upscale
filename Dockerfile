# Usa una base image di Python
FROM python:3.9-slim

# Imposta la directory di lavoro
WORKDIR /app

# Installa le dipendenze necessarie
RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

# Clona il repository Real-ESRGAN
RUN git clone https://github.com/xinntao/Real-ESRGAN.git

# Installa le dipendenze Python
RUN pip install --no-cache-dir -r Real-ESRGAN/requirements.txt

# Copia il file di script per l'ingrandimento
COPY upscale.py /app/

# Comando di default
CMD ["python", "upscale.py"]
