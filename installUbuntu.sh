sudo apt upgrade

sudo apt-get install -y lolcat
sudo apt-get install -y figlet
echo "Installing power line fonts"
sudo apt-get install -y fonts-powerline
echo "Installing python 3"
sudo apt install -y python3
sudo apt install -y python3-pip
echo "Installing nvm"
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
echo "Installing jabba"
curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh
sudo apt-get install gawk
sudo apt-get install -y maven
echo "Installing Rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "Installing GH cli"
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

echo "installing oh-my-zsh"
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing fzf"
sudo apt-get install fzf

echo "Installing Vim and plugs"
sudo apt-get install vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Configuring environment"
cp ./.vimrc ~/.vimrc
cp ./.zshrc ~/.zshrc

echo "Other tools"
sudo apt-get install -y pandoc texlive-latex-base texlive-fonts-recommended texlive-extra-utils texlive-latex-extra wkhtmltopdf
