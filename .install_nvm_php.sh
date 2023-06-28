#!/bin/bash
#Installing NVM
echo "Installing NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#Install node
read -p "Which node version do you want to install?" node
nvm install $node
nvm use $node
echo "NVM Installed Successfully"
echo "Installing PHP"
sudo apt install software-properties-common ca-certificates lsb-release apt-transport-https
LC_ALL=C.UTF-8 sudo add-apt-repository ppa:ondrej/php 
sudo apt update 
read -p "Which PHP version do you want to install?" php
sudo apt install php$php
php -v 
echo "PHP Installed Successfully"