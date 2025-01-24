# Use a base image with necessary tools for running scripts
FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    openjdk-11-jdk \
    && rm -rf /var/lib/apt/lists/*

# Create a directory for Ghidra
RUN mkdir -p /usr/local/ghidra

# Create the shell script directly in the container
RUN echo '#!/bin/bash\n\
# Add your Ghidra installation and running commands here\n\
echo "Ghidra installation script"\n\
' > /usr/local/bin/install_and_run_ghidra.sh

# Make the shell script executable
RUN chmod +x /usr/local/bin/install_and_run_ghidra.sh

# Set the working directory
WORKDIR /usr/local/ghidra

# Run the shell script
CMD ["/usr/local/bin/install_and_run_ghidra.sh"]
