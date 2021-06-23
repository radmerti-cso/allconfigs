
# TLP
sudo add-apt-repository ppa:linrunner/tlp
sudo apt update
sudo apt install tlp tlp-rdw
sudo tlp start

# powertop (to check if TLP settings are optimal according to Intel)
sudo apt install powertop

# zsh
sudo apt install zsh
sudo apt install zsh-syntax-highlighting
# make zsh the default shell
chsh -s $(which zsh)
# log out and back in

# pure (Pretty, minimal and fast ZSH prompt)
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
cat >> ~/.zshrc<< EOF

# add sindresorhus/pure ZSH prompt theme
fpath+=/home/radmert/.zsh/pure
autoload -U promptinit; promptinit
# optionally define some options
PURE_CMD_MAX_EXEC_TIME=10
# change the path color
# zstyle :prompt:pure:path color white
# change the color for both `prompt:success` and `prompt:error`
# zstyle ':prompt:pure:prompt:*' color cyan
# turn on git stash status
zstyle :prompt:pure:git:branch show yes
zstyle :prompt:pure:git:dirty show yes
zstyle :prompt:pure:git:action show yes
zstyle :prompt:pure:git:arrow show yes
zstyle :prompt:pure:git:stash show yes
zstyle :prompt:pure:execution_time show yes
prompt pure
EOF

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh/zsh-syntax-highlighting"
cat >> ~/.zshrc<< EOF

source ${(q-)PWD}/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
EOF

# oh-my-zsh

# neofetch (print system information in terminal)
sudo apt install nofetch

# gnome tweaks
sudo apt install gnome-tweaks

# git
sudo apt install git

# vscode
sudo snap install --classic code

# golang

# Python (Ubuntu 21.04 already comes with Python 3.9)
sudo apt install python3-pip
# add python pip installed binaries to PATH in .bashrc
cat >> ~/.bashrc<< EOF

# add python pip installed binaries to PATH
export PATH=$PATH:/home/radmert/.local/bin/
EOF
cat >> ~/.zshrc<< EOF

# add python pip installed binaries to PATH
export PATH=$PATH:/home/radmert/.local/bin/
EOF

# pyenv
sudo apt install curl
curl https://pyenv.run | bash
# pipenv
sudo apt-get update; sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
pip install --user pipenv

# Docker
# Update the apt package index and install packages to allow apt to use a repository over HTTPS
sudo apt update
sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release
# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
# set up the stable repository
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# Install Docker Engine
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io
# Add your user to the docker group.
sudo usermod -aG docker $USER

# NVIDIA Container Toolkit
distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
   && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - \
   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list


# fira code font
sudo add-apt-repository universe
sudo apt install fonts-firacode

# Signal Desktop App
# 1. Install our official public software signing key
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
sudo mv signal-desktop-keyring.gpg /usr/share/keyrings/
# 2. Add our repository to your list of repositories
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
# 3. Update your package database and install signal
sudo apt update && sudo apt install signal-desktop

# Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# exa (replacement for ls)
sudo apt install exa
