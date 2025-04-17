#!/bin/bash

echo "🌟 Welcome Satyam Raj to GitHub Codespaces!"
echo "🔧 Setting up default package managers..."

# apt setup
sudo apt update
sudo apt install -y curl git unzip htop python3-pip

# npm setup
npm install -g npm eslint prettier

# Python pip setup
pip install --user requests flask pandas

# Aliases
echo "alias gs='git status'" >> ~/.bashrc
echo "alias ll='ls -la'" >> ~/.bashrc

echo "✅ Setup complete!"
