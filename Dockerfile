# Dockerfile to build a flask app

# Utilisez une image de base Python
FROM python:3.9-slim-buster

# Définissez le répertoire de travail
WORKDIR /app

# Copiez les fichiers requis dans le conteneur
COPY requirements.txt .
COPY app.py .

# Installez les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Démarrez l'application
CMD ["python", "app.py"]