### wsl part

apt-get update
apt-get install -y --no-install-reccomends curl git aria2 tar python3-dev python3 python3-venv python3-pip tmux coreutils fd-find build-essential manpages-dev vim openssh-client

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.2
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"
echo '. "$HOME/.asdf/asdf.sh"' >> ~/.bashrc
echo '. "$HOME/.asdf/completions/asdf.bash"' >> ~/.bashrc

asdf update

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf global nodejs latest

asdf plugin-add python
asdf install python 3.10.8
asdf global python 3.10.8

asdf plugin add black https://github.com/amrox/asdf-pyapp.git
asdf plugin add conan https://github.com/amrox/asdf-pyapp.git	
asdf plugin add pre-commit https://github.com/amrox/asdf-pyapp.git	


asdf plugin add act
asdf install act latest
asdf global act latest


asdf plugin add cmake https://github.com/asdf-community/asdf-cmake.git
asdf install cmake latest
asdf global cmake latest

asdf plugin-add ninja https://github.com/asdf-community/asdf-ninja.git
asdf install ninja latest
asdf global ninja latest


asdf plugin add make
asdf install make latest
asdf global make latest

asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf install golang latest
asdf global golang latest

asdf plugin-add rust https://github.com/asdf-community/asdf-rust.git
asdf install rust latest
asdf global rust latest
