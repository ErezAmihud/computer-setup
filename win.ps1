Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# masscode
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
Install-Script -Name winget-install
winget-install
winget install --id=antonreshetov.massCode  -e

Install-Module PSWindowsUpdate
Get-WindowsUpdate
Install-WindowsUpdate

# Internet 
choco install firefox -y
choco install googlechrome -y

#dev
choco install git -y
choco install vscode -y

choco install pyenv-win -y
pyenv update
pyenv install 3.10.5

choco install llvm -y

choco install nvm.portable -y
nvm install --lts
nvm install --latest-npm

choco install visualstudio2022buildtools -y --add Microsoft.VisualStudio.Workload.ManagedDesktopBuildTools --add Microsoft.VisualStudio.Workload.MSBuildTools --add Microsoft.VisualStudio.Workload.NodeBuildTools --add Microsoft.VisualStudio.Workload.VCTools --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64 --add Microsoft.VisualStudio.Component.VC.CMake.Project --add Microsoft.VisualStudio.Component.TestTools.BuildTools --add Microsoft.VisualStudio.Component.VC.Llvm.Clang --add Microsoft.VisualStudio.Component.VC.Llvm.ClangToolset

# wsl 
wsl --update --web-download
wsl --set-default-version 2
wsl --update --web-download
wsl --install -d Ubuntu
choco install docker-desktop -y

#essensials
choco install 1password -y
choco install everything.portable -y
choco install sysinternals -y
choco install aria2 -y
choco install curl -y
choco install wget -y

# extra
choco install microsoft-windows-terminal -y
choco install vlc.portable -y
choco install zeal.portable -y
choco install texstudio.portable -y
choco install windirstat -y
choco install obsidian -y
choco install act-cli -y

docker run -d --name proxpi -p 5000:5000 epicwink/proxpi
# pip config --global set global.index-url "http://127.0.0.1:5000/index/"

docker run -d --name verdaccio -p 4873:4873 verdaccio/verdaccio
# npm set registry http://localhost:4873/

# set up hardcoded settings and stuff from google drive
# Z:\setup.ps1
# TODO setup keyboards from https://github.com/ErezAmihud/dvorak-hebrew-keyboard-mappings
# TODO download zeal docs
# connect your vscode to github
