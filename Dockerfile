FROM n8nio/n8n:latest

# Crear la carpeta donde n8n guardará SQLite, credenciales y flujos
RUN mkdir -p /home/node/.n8n

# Establecer directorio de trabajo
WORKDIR /home/node/.n8n

# Exponer puerto (el que usa n8n)
EXPOSE 5678

# Iniciar n8n normalmente (sin workers, ni redis, ni queue mode)
CMD ["n8n"]
