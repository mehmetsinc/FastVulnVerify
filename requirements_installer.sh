#!/bin/bash

echo "Starting installation of required tools..."

# Update the package list
sudo apt-get update

# Install nmap
echo "Installing nmap..."
sudo apt-get install -y nmap

# Install testssl
echo "Installing testssl..."
sudo apt-get install -y testssl

# Install Metasploit Framework
echo "Installing Metasploit Framework..."
sudo apt-get install -y metasploit-framework

# Install CrackMapExec
echo "Installing CrackMapExec..."
sudo apt-get install -y crackmapexec

# Install SNMP-Check
echo "Installing SNMP-Check..."
sudo apt-get install -y snmp-check

# Install Netcat (for network operations)
echo "Installing Netcat..."
sudo apt-get install -y netcat

# Install Ike-scan
echo "Installing Ike-scan..."
sudo apt-get install -y ike-scan

# Install Python3 and pip
echo "Installing Python3 and pip..."
sudo apt-get install -y python3 python3-pip

# Install additional Python libraries from requirements.txt
echo "Installing Python libraries from requirements.txt..."
pip3 install -r requirements.txt

echo "All tools and dependencies have been successfully installed!"
