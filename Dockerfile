FROM n8nio/n8n:latest

# Variables de entorno
ENV NODE_ENV=production

# Usuario n8n
USER node

# Exponer puerto
EXPOSE 5678

# Healthcheck
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
  CMD wget --quiet --tries=1 --spider http://localhost:5678/healthz || exit 1

# Comando de inicio
CMD ["n8n"]
