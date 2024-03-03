# Use the official Akamai CLI Docker image
FROM akamai/shell:latest

# Use ARG to define the build argument
ARG PIPELINE_REPO

# Set ENV_VARIABLE using the value passed from the build argument
#ENV ENV_REPO=$REPO

# Set the working directory
WORKDIR /app

# Copy the pipeline to the docker container
COPY $PIPELINE_REPO /app/$PIPELINE_REPO

# Copy the .edgerc file to the docker container
COPY edgerc.config /app/edgerc.config

# Copy the entrypoint script into the docker container
COPY CDN-akamai/entrypoint.sh /app/entrypoint.sh

RUN ls -R /app

# Make the entrypoint script executable
RUN chmod +x /app/entrypoint.sh

# Set the entry point for the container
ENTRYPOINT ["/app/entrypoint.sh"]
