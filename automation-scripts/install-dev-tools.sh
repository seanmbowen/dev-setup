#!/bin/bash

# MacBook Development Setup Automation Script
# Author: Sean Bowen
# Description: Automates the installation of essential development tools on a freshly formatted MacBook

# Ensure the script is NOT run as root
if [[ $EUID -eq 0 ]]; then
   echo "Please do not run as root. Exiting..."
   exit 1
fi

echo "Starting MacBook Development Setup..."

# 1. System Update
echo "Updating macOS system..."
sudo softwareupdate -i -a

# 2. Install Homebrew (if not installed)
echo "Installing Homebrew..."
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed. Skipping..."
fi

# Update and verify Homebrew
echo "Updating Homebrew..."
brew update && brew upgrade
brew doctor

# 3. Install Terminal & Shell Enhancements
echo "Installing Warp Terminal & Oh My Zsh..."
brew install --cask warp
brew install zsh zsh-autosuggestions zsh-syntax-highlighting
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 4. Install Git & Version Control
echo "Installing Git & GitHub CLI..."
brew install git

# Configure Git
echo "Configuring Git..."
read -p "Enter your Git username: " GIT_USER
read -p "Enter your Git email: " GIT_EMAIL
git config --global user.name "$GIT_USER"
git config --global user.email "$GIT_EMAIL"

echo "Generating SSH Key for GitHub..."
ssh-keygen -t rsa -b 4096 -C "$GIT_EMAIL"
echo "Add the following SSH key to GitHub:"
cat ~/.ssh/id_rsa.pub

# 5. Install VS Code & JetBrains Toolbox
echo "Installing VS Code & JetBrains Toolbox..."
brew install --cask visual-studio-code jetbrains-toolbox

# 6. Install Programming Languages
echo "Installing Python, Node.js, and Java..."
brew install python pyenv node yarn openjdk

# Set up Python environment
echo "Setting up Python with Pyenv..."
LATEST_PYTHON=$(pyenv install --list | grep -v - | grep -v b | tail -1)
pyenv install $LATEST_PYTHON
pyenv global $LATEST_PYTHON

# Set up Java environment
echo "Configuring Java..."
echo 'export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# 7. Install Database Clients
echo "Installing PostgreSQL, MySQL, and Redis..."
brew install postgresql mysql redis

# 8. Install API Development Tools
echo "Installing Postman..."
brew install --cask postman

# 9. Install Docker & Virtualization
echo "Installing Docker & VirtualBox..."
brew install --cask docker virtualbox

# 10. Install Productivity Tools
echo "Installing productivity apps..."
brew install --cask raycast notion

# 11. Clean up Homebrew
brew cleanup

echo "Setup complete! Restart your Mac for changes to take effect. 🚀"
