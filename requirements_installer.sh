#!/bin/bash

echo "Starting installation of required tools..."

# Update the package list
sudo apt-get update

# Install nmap
echo "Installing nmap..."
sudo apt-get install -y nmap

# Install testssl.sh manually
echo "Installing testssl.sh..."
git clone https://github.com/drwetter/testssl.sh.git
cd testssl.sh
chmod +x testssl.sh
sudo ln -s $(pwd)/testssl.sh /usr/local/bin/testssl
cd ..

# Install Metasploit Framework manually
echo "Installing Metasploit Framework..."
curl https://raw.githubusercontent.com/rapid7/metasploit-framework/master/msfinstall > msfinstall
chmod 755 msfinstall
sudo ./msfinstall
rm msfinstall

# Install CrackMapExec manually
echo "Installing CrackMapExec..."
git clone --recursive https://github.com/byt3bl33d3r/CrackMapExec
cd CrackMapExec
pip3 install -r requirements.txt
python3 setup.py install
cd ..

# Install SNMP-Check manually
echo "Installing SNMP-Check..."
git clone https://github.com/tonimichel/snmpcheck.git
cd snmpcheck
chmod +x snmpcheck.py
sudo ln -s $(pwd)/snmpcheck.py /usr/local/bin/snmp-check
cd ..

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
