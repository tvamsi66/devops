# Use the official Akamai CLI Docker image
FROM akamai/shell:latest

# Use ARG to define the build argument
ARG REPO

# Set ENV_VARIABLE using the value passed from the build argument
ENV ENV_REPO=$REPO

# Print variable passed from github actions workflow
RUN echo "Environment variable value is $REPO"

# Set the working directory
WORKDIR /app

# Copy the entrypoint script into the container
COPY CDN-akamai/entrypoint.sh /app/entrypoint.sh

# Copy the .edgerc into the container
COPY edgerc.config /app/edgerc.config

# Copy the pipeline to the container
COPY 

# Make the entrypoint script executable
RUN chmod +x /app/entrypoint.sh

# Set the entry point for the container
ENTRYPOINT ["/app/entrypoint.sh"]
