FROM node:18

# Avoid running as root
ARG USERNAME=node
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Install additional tools for development
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install git curl wget nano sudo \
    && apt-get autoremove -y && apt-get clean -y

# Set working directory
WORKDIR /workspace

# Set permissions
RUN chown -R $USERNAME:$USERNAME /workspace

# Switch to non-root user
USER $USERNAME