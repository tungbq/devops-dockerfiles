# Use Ubuntu image
ARG BASE_IMAGE=ubuntu:22.04
FROM ${BASE_IMAGE}

ARG PYTHON_VERSION=3.11
ARG ANSIBLE_VERSION=2.15.8
ARG ANSIBLE_LINT=6.22.1

# Install system dependencies
RUN apt-get update && \
    apt-get install -y \
    openssh-server \
    openssh-client \
    sshpass \
    python${PYTHON_VERSION} \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

COPY requirements/ /requirements/
RUN cd /requirements && \
    pip3 install --upgrade pip && \
    pip3 install cryptography jinja2

RUN pip3 install \
    ansible-core==${ANSIBLE_VERSION} \
    ansible-lint==${ANSIBLE_LINT}

# Install needed Ansible roles and collections
RUN ansible-galaxy install -r /requirements/requirements.yml --ignore-certs

# Display installed Ansible roles and collections
RUN echo "Installed Ansible Roles: $(ansible-galaxy role list)"
