### wsl part

sudo apt-add-repository -s "deb http://archive.ubuntu.com/ubuntu/ `lsb_release -cs` main"

sudo apt-get update
sudo apt-get install -y  --no-install-recommends unzip curl git aria2 tar python3-dev python3 python3-venv python3-pip tmux coreutils fd-find build-essential manpages-dev vim openssh-client

# python build deps
sudo apt-get build-dep -y python3
sudo apt-get install -y  --no-install-recommends pkg-config build-essential gdb lcov pkg-config \
      libbz2-dev libffi-dev libgdbm-dev libgdbm-compat-dev liblzma-dev \
      libncurses5-dev libreadline6-dev libsqlite3-dev libssl-dev \
      lzma lzma-dev tk-dev uuid-dev zlib1g-dev libxml2 libxslt1.1 libxml2-dev libxslt1-dev python-libxml2 python-libxslt1 python-dev python-setuptools


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
asdf install python latest:3.10
asdf global python latest:3.10

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

./set_git.ps1
