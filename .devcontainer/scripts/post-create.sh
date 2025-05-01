#!/bin/bash

# Install global npm packages
npm install -g typescript ts-node nodemon

# Initialize git hooks if using husky
npm install
npm run prepare 2>/dev/null || true

echo "Development container is ready!"