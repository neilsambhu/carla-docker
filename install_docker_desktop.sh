# Set up Docker’s package repository.
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Download latest DEB package from the release page.
curl -O https://desktop.docker.com/linux/main/amd64/docker-desktop-4.10.1-amd64.deb

# Install the package with apt as follows:
sudo apt-get update
# sudo apt-get install -y init-system-helpers
wget http://ftp.kr.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.60_all.deb
sudo apt install ./init-system-helpers_1.60_all.deb
# sudo apt-get install ./docker-desktop-<version>-<arch>.deb
sudo apt-get install ./docker-desktop-4.10.1-amd64.deb
