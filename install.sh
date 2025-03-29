#!/bin/bash

# Colors for output
BOLD="\e[1m"
CYAN="\e[36m"
MAGENTA="\e[95m"
YELLOW="\e[33m"
NORMAL="\e[0m"

# Clear the terminal screen
clear
printf "${BOLD}${CYAN}##########################################################\n"
printf "##### Welcome to the ReconBot Installer #####\n"
printf "##########################################################\n\n${NORMAL}"

# Update and upgrade the system
echo "[*] Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y

printf "${BOLD}${MAGENTA}Installing programming languages and essential packages...${NORMAL}\n"

# Create directory for tools if it doesn't exist
mkdir -p ./ReconBot/tools
cd ./ReconBot/tools || exit

# Install essential dependencies
echo "[*] Installing dependencies..."
sudo apt install -y python3 python3-pip golang cargo html2text whatweb theharvester nmap dirsearch sqlmap python3-venv pipx cmake

# Setup Python virtual environment
echo "[*] Setting up Python virtual environment..."
python3 -m venv ./.venv
source ./.venv/bin/activate

# Clone necessary repositories for URL tools
echo "[*] Cloning necessary repositories..."
git clone https://github.com/ameenmaali/urldedupe.git
cd urldedupe || exit
cmake .
make
sudo mv urldedupe /usr/local/bin/
cd ../

# Clone other essential repositories
git clone https://github.com/vulncrax/payloads
git clone https://github.com/s0md3v/Corsy.git

cd Corsy || exit
pip install -r requirements.txt
cd ../

# Install Python tools
echo "[*] Installing Python tools..."
pipx install uro
sudo mv ~/.local/bin/uro /usr/local/bin/
pip install urless
sudo mv ./.venv/bin/urless /usr/local/bin/

# Installing Go-based tools
echo "[*] Installing GO-based tools..."
go install github.com/owasp-amass/amass/v4/...@latest
go install github.com/michenriksen/aquatone@latest
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install github.com/hakluke/hakrawler@latest
go install github.com/tomnomnom/anew@latest
go install github.com/projectdiscovery/httpx/cmd/httpx@latest
go install github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
go install github.com/lc/gau@latest
go install github.com/tomnomnom/gf@latest
go install github.com/tomnomnom/qsreplace@latest
go install github.com/projectdiscovery/katana/cmd/katana@latest
go install github.com/tomnomnom/waybackurls@latest
go install github.com/hahwul/dalfox/v2@latest
go install github.com/projectdiscovery/urlfinder/cmd/urlfinder@latest
go install github.com/PentestPad/subzy@latest
go install github.com/tomnomnom/assetfinder@latest
go install github.com/projectdiscovery/dnsx/cmd/dnsx@latest
go install github.com/projectdiscovery/cdncheck/cmd/cdncheck@latest

# Move Go binaries to /usr/local/bin
echo "[*] Moving Go binaries to /usr/local/bin..."
sudo mv ~/go/bin/* /usr/local/bin/

# Setup GF Patterns for tomnomnom's GF
echo "[*] Setting up GF patterns..."
mkdir -p ~/.gf
cd ~/.gf || exit
git clone https://github.com/tomnomnom/gf.git
git clone https://github.com/coffinxp/GFpattren.git
mv GFpattren/* ~/.gf/
rm -rf GFpattren

# Add GF autocompletion to shell configurations
echo "[*] Configuring GF autocompletion..."
echo 'source ~/.gf/gf-completion.bash' >> ~/.bashrc
echo 'source ~/.gf/gf-completion.zsh' >> ~/.zshrc

# Final completion message
printf "${BOLD}${YELLOW}Installation completed successfully! Run ${BOLD}${CYAN}ReconBot -h${BOLD}${YELLOW} for help.${NORMAL}\n"
