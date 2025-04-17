#!/bin/bash

echo "----------------------------------------"
echo "🌟 Welcome Satyam Raj to GitHub Codespaces!"
echo "🔧 Setting up your personalized environment..."
echo "----------------------------------------"

# Set environment variables
echo "export NAME='Satyam Raj'" >> ~/.bashrc
echo "export DEV_MODE='Supervised'" >> ~/.bashrc
echo "export CONTEXT='Network & Internet Settings'" >> ~/.bashrc

# Create aliases
echo "alias gs='git status'" >> ~/.bashrc
echo "alias ll='ls -la'" >> ~/.bashrc
echo "alias weather='open https://weather.com/weather/today'" >> ~/.bashrc

# Install common packages
sudo apt update && sudo apt install -y curl htop tree

# Add welcome message to every terminal session
echo '' >> ~/.bashrc
echo 'echo "🧠 Hello $NAME! Dev mode: $DEV_MODE | Context: $CONTEXT 💻"' >> ~/.bashrc
echo 'echo "🚀 Ready to build something legendary today!"' >> ~/.bashrc

# Create VS Code extensions config (optional)
mkdir -p ~/.vscode
cat <<EOF > ~/.vscode/extensions.json
{
  "recommendations": [
    "ms-python.python",
    "esbenp.prettier-vscode",
    "dbaeumer.vscode-eslint",
    "ms-azuretools.vscode-docker"
  ]
}
EOF

# Final message
echo "✅ Setup complete. Please restart your Codespace or terminal session to apply all changes."
