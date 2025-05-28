#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

# 1. Remove potentially conflicting packages
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do
  sudo apt-get remove -y $pkg || true
done

# 2. Update package index and install required dependencies
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg

# 3. Create keyring directory
sudo install -m 0755 -d /etc/apt/keyrings

# 4. Download and store Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
  sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# 5. Set up the Docker repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# 6. Update package index again with the new repo
sudo apt-get update

# 7. Install Docker Engine, CLI, containerd and Compose plugin
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# 8. Enable and start Docker service
sudo systemctl enable docker.service
sudo systemctl start docker.service

# 9. Add current user to the docker group
sudo usermod -aG docker $USER

echo "Docker installation completed. Please log out and log back in for group changes to take effect."

