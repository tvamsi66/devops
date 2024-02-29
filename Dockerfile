# Use the official Akamai CLI Docker image
FROM akamai/cli

# Set the working directory
WORKDIR /app

# Copy the entrypoint script into the container
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set the entry point for the container
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
