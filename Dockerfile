FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install dependencies
RUN npm install -g n8n

# Create default user
RUN adduser -D n8n && \
    mkdir -p /home/n8n/.n8n && \
    chown -R n8n:n8n /home/n8n

# Set environment variables
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Set user
USER n8n

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
