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

# Expone el puerto en el que correrá Flask (se usará la variable de entorno PORT)
EXPOSE 5000

# Comando para ejecutar la aplicación con Gunicorn
CMD ["gunicorn", "app:app", "-b", "0.0.0.0:5000"]
