# Node base image
FROM node:16.3.0

# Metadata
LABEL maintainer="Talmage Bergeson"
LABEL description="Docker image creation using a website sample"
LABEL cohort="MTECH Spring 2022 Cohort 14"
LABEL animal="Penguin 🐧"

# Copy server and package.json files
COPY . .

# This app will listen on port 8080 inside the container.
EXPOSE 8080

# Project dependencies installation
RUN npm install

# Start the server
CMD ["node", "index.js"]