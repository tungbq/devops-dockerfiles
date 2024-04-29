# Use Ubuntu image
ARG BASE_IMAGE=ubuntu:22.04
FROM ${BASE_IMAGE}

# Set the working directory
WORKDIR /app

ARG TERRAFORM_VERSION=1.7.4

# Update the package list and install necessary dependencies
RUN apt-get update && \
    apt-get install -y \
    wget \
    unzip

# Download and install Terraform
RUN wget https://releases.hashicorp.com/terraform/$TERRAFORM_VERSION/terraform_$TERRAFORM_VERSION_linux_amd64.zip && \
    unzip terraform_$TERRAFORM_VERSION_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_$TERRAFORM_VERSION_linux_amd64.zip

# Verify the installation
RUN terraform --version

# Set the default command to run when the container starts
CMD ["bash"]
