# 💻 Dev Setup Repository

## Overview
This repository is a **comprehensive guide and toolkit** for setting up a MacBook for software development from scratch. Whether you're configuring a new machine or reformatting an existing one, this repo provides **manual guides**, **automated scripts**, and **best practices** to streamline your workflow.

It is designed to help developers:
- Save time when setting up a new development environment
- Maintain consistency across machines
- Keep configuration steps documented and version-controlled

---

## 📁 Folder Structure
```bash
dev-setup/
│── macbook-setup/          # Core setup guides and tools
│── automation-scripts/     # Scripts to automate dev environment setup
│── databases/              # Setup guides for popular databases
│── cloud-dev/              # Guides for cloud development tooling
│── README.md               # This file
```

---

## 🧰 What's Inside (Work-in-progress)

### 🔧 `macbook-setup/`
- `macbook-dev-setup.md` — Full manual guide to configuring a MacBook for dev work
- `setup-script.sh` — Automated setup script to install all essential tools
- `postman-best-practices.md` — Tips for effective API testing using Postman
- `git-setup.md` — Best practices for Git/GitHub configuration

### ⚙️ `automation-scripts/`
- `install-dev-tools.sh` — One-click setup script for essential dev tools
- `docker-setup.sh` — Guide and script for Docker configuration

### 🗃️ `databases/`
- `postgresql-setup.md` — PostgreSQL install and config
- `mysql-setup.md` — MySQL/MariaDB setup and management

### ☁️ `cloud-dev/`
- `aws-setup.md` — Configure AWS CLI and IAM for developers
- `gcp-setup.md` — Get started with Google Cloud CLI

---

## 🚀 Getting Started

### To run the automated setup:
```bash
cd macbook-setup
chmod +x install-dev-tools.sh
./install-dev-tools.sh
```