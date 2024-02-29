# Use the official Akamai CLI Docker image
FROM akamai/cli

# Set the working directory
WORKDIR /app

# Copy the shell script into the container
COPY entrypoint.sh /app/entrypoint.sh

# Make the shell script executable
RUN chmod +x /app/entrypoint.sh

# Set the entry point for the container
ENTRYPOINT ["/app/entrypoint.sh"]