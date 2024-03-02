# Use the official Akamai CLI Docker image
FROM akamai/shell:latest

# Set the working directory
WORKDIR /app

# Copy the entrypoint script into the container
COPY CDN-akamai/entrypoint.sh /app/entrypoint.sh

COPY CDN-akamai/testFolder /app/testFolder

# Make the entrypoint script executable
RUN chmod +x /app/entrypoint.sh

RUN ls -las

RUN pwd

# Set the entry point for the container
ENTRYPOINT ["/app/entrypoint.sh"]
