sudo apt upgrade

sudo apt-get install lolcat
sudo apt-get install figlet
echo "Installing power line fonts"
sudo apt-get install fonts-powerline
echo "Installing python 3"
sudo apt install python3
echo "Installing nvm"
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
echo "Installing jabba"
curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh

echo "Installing GH cli"
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Installing VIM and plugins"

echo "Installing fzf"

echo "Configuring environment"
