FROM n8nio/n8n:latest

# Requerido para permitir persistencia en Railway
ENV N8N_QUEUE_MODE=regular
ENV N8N_DISABLE_PRODUCTION_MAIN_PROCESS=true

CMD ["n8n", "start"]
