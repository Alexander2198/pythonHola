# Usa una imagen base oficial de Python
FROM python:3.10-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo de requisitos
COPY requirements.txt .

# Instala las dependencias necesarias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el código de la aplicación en el contenedor
COPY . .

# Expone el puerto en el que correrá Flask
EXPOSE 5000

# Comando para ejecutar la aplicación Flask
CMD ["python", "app.py"]
