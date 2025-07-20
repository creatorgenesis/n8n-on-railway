FROM node:18

# Set working directory
WORKDIR /app

# Install n8n
RUN npm install n8n -g

# Expose default port
EXPOSE 5678

# Start n8n
CMD ["n8n"]


