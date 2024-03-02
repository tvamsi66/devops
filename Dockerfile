# Use the official Akamai CLI Docker image
FROM akamai/shell:latest

# Set the working directory
WORKDIR /app

# Copy the entrypoint script into the container
COPY CDN-akamai/entrypoint.sh /app/entrypoint.sh

# Copy the .edgerc into the container
COPY edgerc.config /app/edgerc.config

# Make the entrypoint script executable
RUN chmod +x /app/entrypoint.sh

# Set the entry point for the container
ENTRYPOINT ["/app/entrypoint.sh"]
