# Use an official Node.js LTS image as the base
FROM node:18-buster

# Set working directory inside the container
WORKDIR /workspace

# Install essential dependencies
USER root
RUN apt-get update && \
    apt-get install -y curl bash gnupg && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g npm firebase-tools && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Confirm installations
RUN node -v && npm -v && firebase --version

# Set environment variables
ENV GITHUB_ACCESS_TOKEN=${GITHUB_ACCESS_TOKEN}
ENV CODE_SANDBOX_ACCESS_TOKEN=${CODE_SANDBOX_ACCESS_TOKEN}
ENV FIREBASE_ACCESS_TOKEN=${FIREBASE_ACCESS_TOKEN}

# Use a non-root user for running apps
USER node

# Expose common dev port (can be changed later)
EXPOSE 3000

# Default command
CMD ["bash"]
