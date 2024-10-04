# Usa una imagen base de Python
FROM python:3.9

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos necesarios
COPY app.py requirements.txt ./

# Instala las dependencias
RUN pip install -r requirements.txt

# Expone el puerto 8501 (puerto predeterminado de Streamlit)
EXPOSE 8501

# Comando para ejecutar la aplicación
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
