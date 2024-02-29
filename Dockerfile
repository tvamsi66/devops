# Use the official Akamai CLI Docker image
FROM akamai/cli

# Set the working directory
WORKDIR /app

# Copy the entrypoint script into the container
COPY entrypoint.sh /app/entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /app/entrypoint.sh

RUN pwd

RUN ls

# Set the entry point for the container
#ENTRYPOINT ["/app/entrypoint.sh"]
