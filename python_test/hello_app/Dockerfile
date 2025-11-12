# Usa una imagen base de Python
FROM python:3.10-slim

# Define el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de dependencias
COPY requirements.txt .

# Instala Flask dentro del contenedor
RUN pip install --no-cache-dir -r requirements.txt

# Copia tu aplicación
COPY app.py .

# Expón el puerto 5000 (Flask usará este)
EXPOSE 5000

# Comando que ejecuta tu aplicación
CMD ["python", "app.py"]
