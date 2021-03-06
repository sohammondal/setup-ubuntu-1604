
## Source - https://docs.docker.com/engine/install/ubuntu/

# Uninstall old versions

sudo apt-get remove docker docker-engine docker.io containerd runc -y

# Update the apt package index and install packages to allow apt to use a repository over HTTPS

sudo apt-get update -y

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y

# Add Docker’s official GPG key

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Set up the stable repository

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Install Docker Engine

sudo apt-get update -y

sudo apt-get install docker-ce docker-ce-cli containerd.io -y


# post installation

sudo groupadd docker

sudo usermod -aG docker $USER

# docker compose

# Check for latest version https://github.com/docker/compose/releases
# Source - 

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

docker-compose --version