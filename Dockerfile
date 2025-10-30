FROM n8nio/n8n:latest

# Configuración para Railway
ENV NODE_ENV=production
ENV N8N_PORT=8080
ENV WEBHOOK_URL=https://$RAILWAY_PUBLIC_DOMAIN

# Exponer puerto
EXPOSE 8080

# Comando de inicio
CMD ["n8n"]
