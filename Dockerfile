# Use the official Akamai CLI Docker image
FROM akamai/shell:latest

# Set the working directory
WORKDIR /app

# Copy the entrypoint script into the container
COPY entrypoint.sh /app/entrypoint.sh

COPY devops /apps/devops

RUN ls --recursive /apps/devops/

# Make the entrypoint script executable
RUN chmod +x /app/entrypoint.sh

RUN cd /

RUN ls -las

RUN pwd

# Set the entry point for the container
ENTRYPOINT ["/app/entrypoint.sh"]
