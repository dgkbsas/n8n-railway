FROM docker.n8n.io/n8nio/n8n:latest

USER root

# (Opcional) Instalar herramientas extra si las necesitas a futuro
# RUN apk add --update python3 

USER node

EXPOSE 5678
