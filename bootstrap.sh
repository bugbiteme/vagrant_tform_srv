#!/usr/bin/env bash


sudo apt-get update
sudo apt-get install unzip
sudo apt-get install ansible

# Install terraform
wget https://releases.hashicorp.com/terraform/0.12.16/terraform_0.12.16_linux_amd64.zip
unzip terraform_0.12.16_linux_amd64.zip
sudo mv terraform /usr/local/bin/
terraform --version

# Install AWS CLI
curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
sudo ln -s /usr/local/bin/aws2 /usr/local/bin/aws

# Install Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# Clone ec2 terraform project
#git clone https://github.com/bugbiteme/ec2-terraform.git



# Cleanup
rm -f *.zip
rm -rf aws
