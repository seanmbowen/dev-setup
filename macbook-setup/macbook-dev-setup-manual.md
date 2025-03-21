# MacBook Development Setup Guide

## Introduction

This repository provides a structured guide and automated script to set up a MacBook for software development from scratch. It includes essential tools, programming languages, and best practices to ensure a smooth and efficient workflow.


## 1. Getting Started
### **Pre-Setup Checklist**
Before running the setup, ensure:

- **Backup important files** using Time Machine or an external SSD.
- **Sync cloud services** (iCloud, Google Drive, GitHub, etc.).


### 2. System Update

Ensure your macOS is up to date:
```sh
sudo softwareupdate -i -a
```

### 3. Install Homebrew

Homebrew is the most essential package manager for macOS.
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Verify the installation
```sh
brew upgrade
```

### 4. Terminal & Shell Enhancements

##### Install Warp Terminal
```sh
brew install --cask warp
```

##### Install Oh My Zsh
```sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 5. Install Essential Development Tools

##### Git & Version Control
```sh
brew install git
```

##### Set up Git globally:
```sh
git config --global user.name $DEVELOPER_NAME
git config --global user.email $DEVELOPER_EMAIL
```

##### Install VS Code
```sh
brew install --cask visual-studio-code
```

###### Install recommended extensions:
```sh
code --install-extension ms-python.python
code --install-extension eamodio.gitlens
```

##### Install JetBrains Toolbox (For PyCharm, IntelliJ, WebStorm, etc.)
```sh
brew install --cask jetbrains-toolbox
```

Configure Git with your user information:
```sh
git config --global user.name "<Your Name>"
git config --global user.email "<your.email@example.com>"
```

### 6. Install Programming Languages

#### Python
```sh
brew install python
brew install pyenv
pyenv install $(pyenv install --list | grep -v - | grep -v b | tail -1)
pyenv global $(pyenv install --list | grep -v - | grep -v b | tail -1)
```

#### Node.js & JavaScript
```sh
brew install node
brew install yarn
```

#### Java
```sh
brew install openjdk
```

### 7. Install Database Clients

Depending on your development needs, you may want to install database clients:
```sh
brew install postgresql
brew install mysql
brew install redis
```

### 8. Install API Development Tools

```sh
brew install --cask postman
```

### 9. Install Docker & Virtualization

```sh
brew install --cask docker
brew install --cask virtualbox
```

### 10. Productivity Tools

```sh
brew install --cask raycast    # Spotlight alternative
brew install --cask notion     # Note-taking app
```

## Conclusion

Your MacBook is now set up for software development. Happy coding!
